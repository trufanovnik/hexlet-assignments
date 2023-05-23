# frozen_string_literal: true

class Vehicle < ApplicationRecord
  # BEGIN
  has_one_attached :image
  validates :image, attached: true, content_type: ['image/png', 'image/jpeg', 'image/jpg'],
    dimension: { width: 200, height: 200 }, size: { less_than: 5.megabytes , message: 'is too large' }
  # END

  validates :manufacture, presence: true
  validates :model, presence: true
  validates :color, presence: true
  validates :doors, presence: true, numericality: { only_integer: true }
  validates :kilometrage, presence: true, numericality: { only_integer: true }
  validates :production_year, presence: true

  # BEGIN
  
  # END
end
