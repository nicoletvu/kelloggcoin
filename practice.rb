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

# Setting up hash variables for loop
hash_index = 0
hash = blockchain[hash_index]

# Setting up initial wallet values for each person
ben_inflow = 0
ben_outflow = 0
brian_inflow = 0
brian_outflow = 0
evan_inflow = 0
evan_outflow = 0
anthony_inflow = 0
anthony_outflow = 0

# Loop to sum up wallet inflow
for hash in blockchain
  if hash["to_user"] = "ben"
    ben_inflow = ben_inflow + hash["amount"]
  elsif hash["to_user"] = "brian"
    brian_inflow = brian_inflow + hash["amount"]
  elsif hash["to_user"] = "evan"
    evan_inflow = evan_inflow + hash["amount"]
  elsif hash["from_user"] = "evan"
    anthony_inflow = anthony_inflow + hash["amount"]
  end
end

puts "Inflow:"
puts ben_inflow
puts brian_inflow
puts evan_inflow
puts anthony_inflow

# Loop to withdraw wallet outflow
for hash in blockchain
  if hash["from_user"] = "ben"
    ben_outflow = ben_outflow - hash["amount"]
  elsif hash["from_user"] = "brian"
    brian_outflow = brian_outflow - hash["amount"]
  elsif hash["from_user"] = "evan"
    evan_outflow = evan_outflow - hash["amount"]
  elsif hash["from_user"] = "anthony"
    anthony_outflow = anthony_outflow - hash["amount"]
  end
end

# Get total wallet amounts
ben_total = ben_inflow + ben_outflow
brian_total = brian_inflow + brian_outflow
evan_total = evan_inflow + evan_outflow
anthony_total = anthony_inflow + anthony_outflow

puts "Ben's KelloggCoin balance is #{ben_total}"
puts "Brian's KelloggCoin balance is #{brian_total}"
puts "Evan's KelloggCoin balance is #{evan_total}"
puts "Anthony's KelloggCoin balance is #{anthony_total}"



