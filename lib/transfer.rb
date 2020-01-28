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
    
  end
  
  def reverse_transfer
    
  end
end
