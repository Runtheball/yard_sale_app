class User < ActiveRecord::Base

  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email

  def send_new_user_message
    
  end
end