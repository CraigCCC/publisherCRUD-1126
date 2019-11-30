class Publisher < ApplicationRecord
  # validations
  validates :name, presence: true
  validates :tel, format: { with: /(^0[0-9]-\d{7,8}|^09\d{2}-\d{6})/, message: "格式錯誤：請參照0X-XXXXXXXX, 09XX-XXXXXX"}

  # relationships
  has_many :books

  # scopes
  scope :available, -> { where(online: true) }
end
