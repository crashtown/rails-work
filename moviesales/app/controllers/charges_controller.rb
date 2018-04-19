class ChargesController < ApplicationController
  # before_action :set_movie
  def new

  end

  def create

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @movies.price,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  # def set_movie
  #   @movies = Movie.find(params[:id])
  # end

end
