class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :postvotes

  validates_presence_of :title, :url 

end
