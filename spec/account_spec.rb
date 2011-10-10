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

 it "should have a balance equal to available amount after withdrawal" do
    starting_balance = 100
    deposit_amount = 200
    withdraw_amount = 200
    current_balance = 100
    subject = Account.new(starting_balance)
    subject.deposit(deposit_amount)
    subject.withdraw(withdraw_amount)
    subject.balance.should == current_balance
    end
  it "Account2 should have a balance equal to current balance + transferred amount from Account1" do
    starting_balance = 500
    transfer_amount = 200
    current_balance = 700
    subject1 = Account.new(starting_balance)
    subject2= Account.new(starting_balance)
    subject1.transfer_to(subject2,transfer_amount)
    subject1.balance.should == 300
    subject2.balance.should == current_balance
 end


end