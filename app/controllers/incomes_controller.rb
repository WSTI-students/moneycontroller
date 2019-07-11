class IncomesController < ApplicationController
  def index
    @income = Income.all
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    @income.build_balance(value: 1)

    respond_to do |format|
      if @income.save
        format.html { redirect_to root_path, notice: 'Income was successfully added.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def income_params
    params.require(:income).permit(:title, :value, :category_id)
  end

end
