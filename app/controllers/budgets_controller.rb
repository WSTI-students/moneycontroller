class BudgetsController < ApplicationController
  before_action :set_budget, only: [:edit, :update]

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

  def update
    respond_to do |format|
      if @budget.update(budget_params)
        format.html { redirect_to root_path, notice: 'Budget was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_budget
  @budget = current_user.budgets.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:title, :value, :start_date, :end_date)
  end
end
