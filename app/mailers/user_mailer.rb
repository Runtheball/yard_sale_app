class UserMailer < ActionMailer::Base
  default from: "allsghok@gmail.com" #can be overridden within the mail(to:) line

  def welcome_email(user)
    @new_user = user
    email_with_name = "#{@new_user.first_name} <#{@new_user.email}>"
    mail(to: email_with_name, subject: "Come On In, Pardner")
    UserMailer.new_welcome_email(user).deliver
  end


  def self.new_yard_sale_message_to_group(group, yard_sale)
    group.each do |user|
      UserMailer.new_yard_sale_message(user, yard_sale).deliver
    end
  end

  def new_yard_sale_message(user, yard_sale)
    @user = user # example User.find(1) = "bob smith"
    @yard_sale = yard_sale 
    mail(to: user.email, subject: "Bodacious Yard Sale is a-comin!", )
  end
end
