class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :about_me, :birthdate, :full_name, :profile_picture_attributes
  has_one :profile_picture,:class_name => "Image", :as => :picture
  accepts_nested_attributes_for :profile_picture
  has_many :albums
  has_many :images, :through => :albums
end
