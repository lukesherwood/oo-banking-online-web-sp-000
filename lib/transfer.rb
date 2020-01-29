class Transfer
  
  attr_reader :sender, :receiver, :status, :amount
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  
  def valid?
  self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    if self.valid?
        BankAccount.sender.balance -= @amount
        BankAccount.receiver.balance += @amount
        self.status = "complete"
  end
  
  def reverse_transfer
    
  end
end
