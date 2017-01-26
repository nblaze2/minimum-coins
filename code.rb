def minimum_coins(number)

  dollar = 100
  half = 50
  quarter = 25
  dime = 10
  nickle = 5
  penny = 1

  dlr = 0
  hlf = 0
  qtr = 0
  dm = 0
  nkl = 0
  pny = 0

  while number >= dollar
    number -= dollar
    dlr += 1
  end
  while number < dollar && number >= half
    number -= half
    hlf += 1
  end
  while number < half && number >= quarter
    number -= quarter
    qtr += 1
  end
  while number < quarter && number >= dime
    number -= dime
    dm += 1
  end
  while number < dime && number >= nickle
    number -= nickle
    nkl += 1
  end
  while number < nickle && number > 0
    number -= penny
    pny += 1
  end
  total = dlr + hlf + qtr + dm + nkl + pny
  puts "Minimum number of coins: #{total}."
  puts "(100's: #{dlr}, 50's: #{hlf}, 25's: #{qtr}, 10's: #{dm}, 5's: #{nkl}, 1's: #{pny})"
end


puts "Let's find out what the least number of coins it takes to make a certain amount."
print "Pick a number of cents from 1 - 250, please: "
number = gets.chomp.to_i
while number <= 0 || number > 250
  print "I said, 'Pick a number of cents from 1 - 250, PLEASE:' "
  number = gets.chomp.to_i
end

minimum_coins(number)
