class Prototype < ApplicationRecord
  belong_to :user
  has_one_attached :image
end
