class LinkedList
end

class Node
  def initialize(value=nil)
    @value = value
    @next_node = nil
  end

  def value
    @value
  end

  def next_node
    @next_node
  end

  def to_s
    "Value: #{@value} | Next Node: #{@next_node == nil ? 'nil' : @next_node}"
  end
end

node1 = Node.new(1)
puts node1