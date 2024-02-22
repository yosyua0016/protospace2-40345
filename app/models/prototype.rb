class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate :validate_image_presence

  private

  def validate_image_presence
    errors.add(:image, "must be attached") unless image.attached?
  end
end