class Budget < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :value_cents, presence: true,
                          numericality: { greater_than: 0 }
  validate :budget_date_range

  monetize :value_cents

  def budget_date_range
    return if start_date < end_date

    errors.add(:end_date, "must be greater than Start Date")
  end
end
