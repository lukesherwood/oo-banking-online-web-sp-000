class Transfer
  
  attr_reader :sender, :receiver, :status, :amount
  
  def initialize(sender, recipient, amount)
    @sender = sender
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  
  
end
