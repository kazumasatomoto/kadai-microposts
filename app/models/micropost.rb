class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :add_to_favorites, through: :fovorites, source: :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  

end
