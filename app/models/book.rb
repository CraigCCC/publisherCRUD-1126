class Book < ApplicationRecord
  validates :title, presence: true
  validates :list_price, :ssell_price, :page_num, numericality: { greater_than: 0 }
  validates :isbn, :isbn13, uniqueness: true
end
