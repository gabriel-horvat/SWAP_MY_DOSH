class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader
  has_many :received_messages, dependent: :destroy, class_name: "Message", foreign_key: "sender_id"
  has_many :sent_messages, dependent: :destroy, class_name: "Message", foreign_key: "receiver_id"
  has_many :reviews, dependent: :destroy


end
