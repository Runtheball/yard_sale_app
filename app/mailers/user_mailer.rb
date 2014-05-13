class UserMailer < ActionMailer::Base
  default from: "tiyappmailer@gmail.com" #can be overridden within the mail(to:) line

  def welcome_email(user)
    @new_user = user
    mail(to: @new_user.email, subject: "Come On In, Pardner").deliver
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
