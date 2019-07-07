class Category < ApplicationRecord
  enum action_type: %i[expense income both]

  has_many :expenses
  has_many :incomes

  validates :action_type, inclusion: { in: action_types.keys }
end
