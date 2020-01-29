require 'pry'
class Transfer
  
  attr_reader :sender, :receiver, :status, :amount
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    binding.pry
  self.sender.valid? && self.receiver.valid? && self.receiver.balance - @amount > 0
  end
  
  def execute_transaction
    if self.valid?
        BankAccount.sender.balance -= @amount
        BankAccount.receiver.balance += @amount
        self.status = "complete"
    else self.status = "rejected"
    end
  end
  
  def reverse_transfer
    
  end
end
