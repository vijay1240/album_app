class Album < ActiveRecord::Base
  attr_accessible :name, :images_attributes
  has_many :images, :as => :picture, :class_name => "Image"
  accepts_nested_attributes_for :images,:allow_destroy => true
  belongs_to :user

  def images_other_than_cover
    Image.where("picture_id = ? and picture_type = ? and cover_pic is NULL",self.id, "Album")
  end

  def cover_pic
    Image.where("picture_id = ? and picture_type = ? and cover_pic IS NOT NULL",self.id, "Album")
  end
end
