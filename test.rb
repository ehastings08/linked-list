require_relative 'linked_list'


# Testing

linked_list = LinkedList.new(1)
linked_list.append(2)
linked_list.append(3)
linked_list.append(4)

puts "Linked list: #{linked_list}"
# puts "Linked list length: #{linked_list.size}"
# puts "Linked list head: #{linked_list.head}"
# puts "Linked list tail: #{linked_list.tail}"
# puts "Linked list at position 1 (expecting node with value 2): #{linked_list.at(1)}"
# puts "Popping the linked list results in #{linked_list.pop} and changes linked list to #{linked_list}"
# puts "Linked list contains 3 (true): #{linked_list.contains?(3)}"
# puts "Linked list contains 9 (false): #{linked_list.contains?(9)}"
# puts "Finding value 3 in linked list: at index #{linked_list.find(3)}"
# puts "Finding value 4 in linked list: at index #{linked_list.find(4)}"
# puts "Finding value 10 in linked list: at index #{linked_list.find(10)}"