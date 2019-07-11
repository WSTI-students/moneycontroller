class Balance < ApplicationRecord
  has_one :expense
  has_one :income

  validates :value, presence: true,
                    numericality: { only_integer: true }
end
