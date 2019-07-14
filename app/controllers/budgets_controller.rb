class BudgetsController < ApplicationController
  def index; end

  def new
    @budget = current_user.budgets.new
  end

  def create
    @budget = current_user.budgets.new(budget_params)

    respond_to do |format|
      if @budget.save
        format.html { redirect_to root_path, notice: 'Budget was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  private

  def budget_params
    params.require(:budget).permit(:title, :value, :start_date, :end_date)
  end
end
