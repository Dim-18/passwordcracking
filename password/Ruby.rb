puts "Enter your password: "
password = gets.chomp

predicted_pass = ""
while predicted_pass != password
  predicted_pass = ""
  password.length.times do
    predicted_pass += rand(10).to_s
  end
  puts predicted_pass
end

puts "Your password is: #{predicted_pass}"
