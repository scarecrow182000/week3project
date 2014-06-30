#Bank Balance
#Eric Epperson

@balance = []

class BankBalance

  def deposit
    puts "how much would you like to deposit today?"
    amount_to_deposit = gets.chomp.to_i
    @balance << amount_to_deposit
    prompt
  end

  def withdrawl
    puts "How much would you like to withdrawl today?"
    amount_to_withdraw = gets.chomp.to_i
    amount_withdrawn = amount_to_withdraw * -1
    @balance << amount_withdrawn
    prompt
  end

  def inquiry
    balance = @balance.inject(:+)
    puts "Your Balance today is #{balance}"
    prompt
  end

  def prompt
    puts "You may Quit by pressing Q at any time"
    puts "Would you like to make a Deposit (D), Withdrawl (W), or perform a Balance Inquiry (I)?"
    answer = gets.chomp.upcase
    if answer == "D"
      deposit
    elsif answer == "W"
      withdrawl
    elsif answer == "I"
      inquiry
    elsif answer == "Q"
      puts "Thank You. Have a nice day!"
      exit
    else prompt
    end
  end

  prompt.new

end

puts "Welcome to the Iron Yard Bank"
BankBalance.new
