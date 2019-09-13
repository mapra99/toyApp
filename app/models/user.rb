class User < ApplicationRecord
  #belongs_to :user
  has_many :microposts
  validates :name,  format: { with: /\A[a-zA-Z|\s]+\z/, message: "must be only letters and spaces"},
                    presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
                    presence: true
end
