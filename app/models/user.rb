class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email
  after_create :welcome_email
  
  def welcome_email
    UserMailer.welcome_email(self)
  end
end