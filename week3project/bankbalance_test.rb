# week3project_test.rb
#Eric Epperson

require 'minitest/autorun'
require 'minitest/pride'
require './bankbalance'

class BankBalanceTest < Minitest::Test

  # def test_bank_balance_exists
  #   BankBalance.new
  # end



  def test_starting_account_balance_is_zero
    assert_equal 0,   BankBalance.new.show_balance
  end

end

  # def test_can_deposit
  #   assert_equal 100, @balance = BankBalance.deposit(100)
  # end
