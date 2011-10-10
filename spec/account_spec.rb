require 'rspec'
require 'account.rb'

describe Account do

  it "should initially have a balance of zero" do

    account = Account.new(0)
    account.balance.should == 0.0

  end

 it "should have balance equal to starting balance" do
    starting_balance = 100
    subject = Account.new(starting_balance)
    subject.balance.should == starting_balance

 end

  it "should have a balance equal to starting_balance + deposited" do
    deposit_amount = 200
    starting_balance = 100
    subject = Account.new(starting_balance)
    subject.deposit(deposit_amount)
    subject.balance.should == starting_balance+deposit_amount
  end

end