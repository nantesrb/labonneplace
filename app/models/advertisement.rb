class Advertisement < ApplicationRecord

  has_one_attached :image

  validates :title, :author, :price, presence: true

end
