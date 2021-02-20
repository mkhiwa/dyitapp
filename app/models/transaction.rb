class Transaction < ApplicationRecord
  belongs_to :user
  before_save :check_and_update_balance

    def check_and_update_balance 
      @sender = User.find_by(id: user_id)
      @receiver = User.find_by(email: user_email)

     if @sender.balance.present? # make sure sender has sufficient balance first!
      @sender.update(balance: @sender.balance - amount)
      @receiver.update(balance: @receiver.balance + amount)
     end
   end
end
