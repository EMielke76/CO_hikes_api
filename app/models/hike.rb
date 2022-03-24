class Hike < ApplicationRecord
  validates :hike_name, presence: true
  validates :location, presence: true
  validates :website, presence: true
  validates :description, presence: true
end
