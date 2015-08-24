
class BillsController < ApplicationController
  unloadable

  def index
    @bills = Bill.order(created_at: :desc)
  end

  def new
  end

  def create
  end

  def invoice
    @bill = Bill.find(params[:id])
    render layout: false
  end


end
