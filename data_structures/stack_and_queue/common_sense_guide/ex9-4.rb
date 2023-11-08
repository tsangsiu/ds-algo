=begin

[P]
- To implement string reversion using stacks

=end

require_relative '../stack.rb'

def reverse_str(str)
  stack = Stack.new
  str.each_char { |char| stack << char }
  
  reversed_str = ""
  str.length.times { reversed_str << stack.pop }
  reversed_str
end

puts reverse_str("abcde") == "edcba"
