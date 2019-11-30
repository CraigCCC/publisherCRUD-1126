class Book < ApplicationRecord
  # validations
  validates :title, presence: true
  validates :list_price, :ssell_price, :page_num, numericality: { greater_than: 0 }
  validates :isbn, :isbn13, uniqueness: true

  # relationships
  has_one_attached :cover_image
  belongs_to :publisher
  
  # def self.available
  #   where(on_sell: true).where('list_price > 0')
  # end
  
  #scopes
  scope :available, -> { where(on_sell: true).where('list_price > 0') }
end
