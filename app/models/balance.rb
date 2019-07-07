class Balance < ApplicationRecord
  has_many :expenses
  has_many :incomes

  validates :value, presence: true,
                    numericality: { only_integer: true }
end
