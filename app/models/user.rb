class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  # has_attached_file :image, :styles => { large: '600x600>', medium: '300x300>', thumb: '150x150#' }
  has_attached_file :profile_pic,
  # styles: { medium: "300x300>", thumb: "100x100>" }
  # default_url: "/images/:style/missing.png",
  :url  => "/assets/users/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"
  # validates_attachment_content_type :profile_pic, :content_type => ['image/jpeg', 'image/png']
  # validates_attachment_presence :photo
  # validates_attachment_size :profile_pic, :less_than => 5.megabytes

end
