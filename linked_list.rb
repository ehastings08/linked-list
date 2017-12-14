class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  # Adds a new node to the end of the list
  def append
    # Start with the head
    # Keep nexting until you reach the element that has a pointer to nil
    # Add new element with pointer to nil and add a pointer to that element to the old last element
  end

  def to_s
    # Start with the head
    current = @head
    # Keep nexting and printing until done
    puts current
    until current.next_node == nil
      current = current.next_node
    end
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    "Value: #{@value} | Next Node: #{@next_node == nil ? 'nil' : @next_node}"
  end
end

node1 = Node.new(1)
#puts node1

node2 = Node.new(2, 1)
#puts node2

linked_list = LinkedList.new(1)
puts linked_list