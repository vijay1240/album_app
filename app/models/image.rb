class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :picture, :cover_pic
  belongs_to :picture, :polymorphic => true
  has_attached_file :picture
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def user
    User.find(self.picture_id) if self.picture_type.eql?("User")
  end

  def album
    Album.find(self.picture_id) if self.picture_type.eql?("Album")
  end
end
