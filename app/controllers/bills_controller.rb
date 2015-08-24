class BillsController < ApplicationController
  unloadable

  def index
    @bills = Bill.order(created_at: :desc)
  end

  def new
    @issues = Issue.where(id: params[:ids])
    @bill = Bill.new
    @bill.issues = @issues 
  end

  def create
    @bill = Bill.new(bill_params)
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  def invoice
    @bill = Bill.find(params[:id])
    render layout: false
  end

  private
  
  def bill_params
    params.require(:bill).permit(billed_issues_attributes: [:issue_id, :rate, :quantity, :tax, :sum])
  end

end
