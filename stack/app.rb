require_relative("./stack.rb")

# Testing out the stack

def test_stack
  # Initialize Stack
  stack1 = Stack.new(10)

  # Add item to stack
  stack.push(10)
  stack.push(20)

  while(!stack1.is_empty?) do
    puts stack1.pop
  end
end

# Testing out the stack





# Reversing a string

def reverse_string
  puts "Please enter the word you want to be reversed"
  user_input = gets.chomp.gsub(" ", "")

  reversed_string_array = []

  reverse_stack = Stack.new(user_input.length)

  user_input.split("").each do |letter|
    reverse_stack.push(letter)
  end

  while !reverse_stack.is_empty?
    reversed_string_array.push reverse_stack.pop
  end

  puts reversed_string_array.join("")
end
# Reversing a string