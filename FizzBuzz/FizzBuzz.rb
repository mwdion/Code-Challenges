puts "Enter any number if your number is divisible by 3 then FIZZ, if your number is divisible by 5 then BUZZ, if your number is divisible by both then FIZZBUZZ!"
i = gets.chomp.to_i
for i in 1..i
  if i % 15 == 0
      puts "FIZZBUZZ"
  elsif i % 3 == 0
      puts "FIZZ"
  elsif i % 5 == 0
      puts "BUZZ"
  else 
      puts "#{i}"
  end
end

