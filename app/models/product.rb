class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  has_many :galleries

  belongs_to :category

  has_many :related_products
  has_many :related, through: :related_products

  enum hit: { hit: 1, not_hit: 0 }
  
  scope :active, -> { where(status: 1) }
end
