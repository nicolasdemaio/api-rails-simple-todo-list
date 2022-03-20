class Task < ApplicationRecord
  validates :title, presence: true
  validates :priority, presence: true
  validates :priority, inclusion: { in: %w(LOW MEDIUM HIGH),
                                    message: "Priority: %{value} must be LOW, MEDIUM or HIGH"}

end
