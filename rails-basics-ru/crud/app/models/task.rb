class Task < ApplicationRecord
  validates :name, :status, :creator, presence: true
  validates :completed, inclusion: [true, false]
end
