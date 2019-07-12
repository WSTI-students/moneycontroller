class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.build_balance(value: 1)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to root_path, notice: 'Expense was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:title, :value, :category_id)
  end
end
