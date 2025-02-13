def generate_password(lenght)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + ['!', '@', '#', '$', '%', '&', '*', '(', ')', '-', '+', '=']
  password = Array.new(lenght) { characters.sample }.join
  return password
end

# Prompting the user for the password length
puts "Enter the number of digits you want for your password:"
lenght = gets.chomp.to_i  # Converts the user input to an integer

# Generating the password
generate_password = generate_password(lenght)
puts "Generated Password: #{generate_password}"