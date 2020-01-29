require 'pry'
class Transfer
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    
  self.sender.valid? && self.receiver.valid? && self.receiver.balance - @amount > 0
  end
  
  def execute_transaction
    if self.valid?
        self.sender.balance -= @amount
        self.receiver.balance += @amount
        self.status = "complete"
    else self.status = "rejected"
    end
  end
  
  def reverse_transfer
    
  end
end
