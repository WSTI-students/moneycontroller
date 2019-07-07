class Balance < ApplicationRecord
  has_many :expenses

  validates :value, presence: true,
                    numericality: { only_integer: true }
end
