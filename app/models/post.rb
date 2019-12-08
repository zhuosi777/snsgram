class Post < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destory

  accepts_nested_attributes_for :photos
end
