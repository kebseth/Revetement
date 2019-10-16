class Sol < ApplicationRecord
  validates :nom, presence: true
  validates :prix, presence: true
  validates :photo, presence: true
end
