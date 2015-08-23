
class BillsController < ApplicationController
  unloadable
  
  # before_filter :find_project, :authorize


  def index
    @bills = Bill.order(created_at: :desc)
  end

  def new

  end

  def create

  end


end
