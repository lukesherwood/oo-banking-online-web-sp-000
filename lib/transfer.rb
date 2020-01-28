class Transfer
  attr_accessor = :sender, :reciever, :amount
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @reciever = recipient
    @amount = amount
    @status = "pending"
  end
  
  def sender
    @sender
  end
  
  def reciever
    @reciever
  end
  
  
end
