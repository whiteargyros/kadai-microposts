class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost, class_name: 'Micropost'
  
  has_many :favorites
  has_many :liked, through: :favorites, source: :user

end
