class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true

  has_many :posts
  has_friendship

  has_attached_file :profile_pic,
  styles: { medium: "300x300>", thumb: "100x100>" },
  :url  => "/assets/users/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"
  validates_attachment_content_type :profile_pic, :content_type => ['image/jpeg', 'image/png']

end
