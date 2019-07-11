class Income < ApplicationRecord
  belongs_to :category
  belongs_to :balance

  validates :title, presence: true
  validates :value, presence: true,
                    numericality: { greater_than: 0 }
end
