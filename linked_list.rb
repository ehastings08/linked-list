class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  # Adds a new node to the end of the list
  def append(new_value)
    new_node = Node.new(new_value, nil)
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = new_node
  end

  # Adds a new node to the start of the list
  def prepend(new_value)
    new_node = Node.new(new_value, @head)
    @head = new_node
  end

  # Counts the number of nodes and returns them as size
  def size
    current = @head
    count = 0
    until current == nil
      current = current.next_node
      count += 1
    end
    count
  end

  def head
    @head
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def at(index)
    current = @head
    count = 0
    until count == index
      current = current.next_node
      count += 1
    end
    current
  end

  def pop
    last_node = self.tail
    current = @head
    until current.next_node == last_node
      current = current.next_node
    end
    current.next_node = nil
    return last_node
  end

  def contains?(check_value)
    current = @head
    found_element = false
    until current.next_node == nil || found_element == true
      current.value == check_value ? found_element = true : found_element = false
      current = current.next_node
    end
    found_element
  end

  def find(data)
    current = @head
    count = 0
    until current.value == data || current.next_node == nil
      current = current.next_node
      count += 1
    end
    current.value == data ? count : nil
  end

  # Displays a list of the nodes in a linked list in order, including value and next node pointer
  def to_s
    return_string = ''
    current = @head
    return_string += current.to_s + "\n"
    until current.next_node == nil
      current = current.next_node
      return_string += current.to_s + "\n"
    end
    return_string
  end
end


class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    "Value: #{@value} | Next Node: #{@next_node == nil ? 'nil' : @next_node.value}"
  end
end


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