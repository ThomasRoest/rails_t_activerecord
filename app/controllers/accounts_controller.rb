class AccountsController < ApplicationController
  def index
    if params[:name] == "thomas"
      @accounts = Customer.where("name LIKE ?", "th%")
    else
      @accounts = Customer.all
    end
  end

  def show
    @account = Account.find(params[:id])
  end
end
