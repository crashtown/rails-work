class PagesController < ApplicationController
  def index
  end

  def authors
    @authors = Author.all
  end

  def books
    @books = Book.all
  end

  def author_books
    @author = Author.find(params[:id])
  end

  def stores
    @stores = Store.all
  end

  def stores_view
    @stores = Store.all
    @store_id = Store.find(params[:id])
  end

  def storesearch
        @stores_user_address = Store.near(params[:user_address_input])
  end
end
