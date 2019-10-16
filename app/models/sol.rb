class Sol < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :nom, presence: true
  validates :prix, presence: true
  validates :photo, presence: true
end
