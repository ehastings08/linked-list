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

node1 = Node.new(1)
#puts node1
node2 = Node.new(2, 1)
#puts node2

linked_list = LinkedList.new(1)
linked_list.append(2)
linked_list.append(3)
linked_list.append(4)
puts linked_list

