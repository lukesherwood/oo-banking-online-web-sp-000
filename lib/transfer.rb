class Transfer
  attr_accessor = :sender, :receiver, :amount
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  
  def sender
    @sender
  end
  
  def receiver
    @receiver
  end
  
  def status
    @status
  end  
  
  def amount
    @amount
  end
  
end
