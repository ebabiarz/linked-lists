require './lib/linked-list'
require './lib/node'

list = LinkedList.new

puts "Testing #append(value)"
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
puts list


list.clear

puts ""
puts ""
puts "Testing #prepend(value)"
list.prepend('dog')
list.prepend('cat')
list.prepend('parrot')
list.prepend('hamster')
list.prepend('snake')
list.prepend('turtle')
puts list


puts ""
puts ""
puts "Testing #size"
puts "The size of the list is #{list.size}"


puts ""
puts ""
puts "Testing #head"
puts "The item in the head node is #{list.head.value}"


puts ""
puts ""
puts "Testing #tail"
puts "The item in the tail node is #{list.tail.value}"


puts ""
puts ""
puts "Testing #at(index)"
puts "#{list.at(4).value} is at position 4 in list"


puts ""
puts ""
puts "Testing #contains?(value)"
puts "The list contains 'parrot'?"
puts list.contains?('parrot')
puts "The list contains 'eagle'?"
puts list.contains?('eagle')


puts ""
puts ""
puts "Testing #find(value)"
puts "The index containing 'dog' is #{list.find('dog')}"
if list.find('platypus') == nil
  puts "The list does not contain the value 'platypus'"
else
  puts "The index containing 'platypus' is #{list.find('platypus')}"
end


puts ""
puts ""
puts "Testing #pop"
puts "List before #pop"
puts list
list.pop
puts "List after #pop"
puts list


list.clear


puts ""
puts ""
puts "Testing #insert_at(value, index)"
list.insert_at('test', 3)
puts list
list.pop
list.prepend('dog')
list.prepend('cat')
list.prepend('parrot')
list.prepend('hamster')
list.prepend('snake')
list.prepend('turtle')
puts "List before inserting 'bear' at index 3:"
puts list
list.insert_at('bear', 3)
puts "List after inserting 'bear' at index 3:"
puts list
list.insert_at('kangaroo', 10)
puts list


list.clear

puts ""
puts ""
puts "Testing #remove_at(index)"
puts "#remove_at(index) on empty list:"
list.remove_at(3)
list.insert_at('test', 3)
puts "List before removing the only item:"
puts list
list.remove_at(0)
puts "List after removing the only item:"
puts list
puts "List head node and tail node after removing the only item at index 0:"
puts "Head node is '#{list.head}'"
puts "Tail node is '#{list.tail}'"
list.prepend('dog')
list.prepend('cat')
list.prepend('parrot')
list.prepend('hamster')
list.prepend('snake')
list.prepend('turtle')
puts "List before removing node at index 3:"
puts list
list.remove_at(3)
puts "List after removing node at index 3:"
puts list
puts "Results of attempting to remove node at a non-existent index(12):"
list.remove_at(12)