class Income < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :value, presence: true,
                    numericality: { greater_than: 0 }
end
