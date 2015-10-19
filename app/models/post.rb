class Post < ActiveRecord::Base
  
  validates :body, presence: true

  has_many :comments, dependent: :destroy

end

