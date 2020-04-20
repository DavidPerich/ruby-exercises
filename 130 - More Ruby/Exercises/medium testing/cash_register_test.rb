require 'minitest/autorun'
require "minitest/reporters"
require 'stringio'

require_relative 'cash_register.rb'
require_relative 'transaction.rb'

require 'pry'

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(0)
    @transaction = Transaction.new(50)
    @transaction.amount_paid = 100
    # binding.pry
  end
  
  def test_accept_money 
    assert_equal(100, @cash_register.accept_money(@transaction))
  end
  
  def test_change 
    assert_equal(50, @cash_register.change(@transaction))
  end 
  
  def test_give_receipt
    assert_output("You've paid $50.\n"){ @cash_register.give_receipt(@transaction)}
  end
  
  def test_prompt_for_payment 
    input = StringIO.new('50')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(50, @transaction.amount_paid)
  end
  
  
end
