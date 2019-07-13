class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :balance

  validates :title, presence: true
  validates :value_cents, presence: true,
                    numericality: { greater_than: 0 }

  monetize :value_cents
end
