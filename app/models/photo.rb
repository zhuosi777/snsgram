class Photo < ApplicationRecord
  belongs_to :post

  validates :iamge, presence: true
end
