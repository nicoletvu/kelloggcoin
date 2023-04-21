# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# Setting up initial wallet values for each person
ben_total = 0
brian_total = 0
evan_total = 0
anthony_total = 0

# Setting up hash variables for loop
blockchain_index = 0

# Loop calculating additions to wallet
loop do 

  # Stop loop once we've gone through all the hashes
  if blockchain_index == blockchain.count
    break
  end

  case
    when blockchain[blockchain_index]["to_user"] == "ben"
      ben_total = ben_total + blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["to_user"] == "brian"
      brian_total = brian_total + blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["to_user"] == "evan"
      evan_total= evan_total + blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["to_user"] == "anthony"
      anthony_total = anthony_total + blockchain[blockchain_index]["amount"]
  end

  blockchain_index = blockchain_index + 1

end

# Reset blockchain_index to 0 for use in next loop (is this bad practice?)
blockchain_index = 0

# Loop calculating subtractions to wallet
loop do 

  # Stop loop once we've gone through all the hashes
  if blockchain_index == blockchain.count
    break
  end

  case
    when blockchain[blockchain_index]["from_user"] == "ben"
      ben_total = ben_total - blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["from_user"] == "brian"
      brian_total = brian_total - blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["from_user"] == "evan"
      evan_total= evan_total - blockchain[blockchain_index]["amount"]
    when blockchain[blockchain_index]["from_user"] == "anthony"
      anthony_total = anthony_total - blockchain[blockchain_index]["amount"]
  end

  blockchain_index = blockchain_index + 1

end

# Print total balances
puts "Ben's KelloggCoin balance is #{ben_total}"
puts "Brian's KelloggCoin balance is #{brian_total}"
puts "Evan's KelloggCoin balance is #{evan_total}"
puts "Anthony's KelloggCoin balance is #{anthony_total}"



