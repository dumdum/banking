class Account

  attr_reader :balance

  def initialize(starting_balance = 0.0)
    @balance = starting_balance
  end


  def deposit(deposit_amount)
    @balance = @balance+ deposit_amount
  end

  def withdraw(withdraw_amount)
    @balance = @balance - withdraw_amount
  end

end