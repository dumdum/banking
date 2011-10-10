class Account

  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def return_balance()
    @balance
  end


end