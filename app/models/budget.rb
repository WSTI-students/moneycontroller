class Budget < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :value, presence: true,
                    numericality: { greater_than: 0 }
end
