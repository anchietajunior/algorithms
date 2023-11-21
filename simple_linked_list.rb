class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

# Create the LinkedList
n1 = Node.new(1)
n2 = Node.new(2)
n1.next_node = n2
n3 = Node.new(3)
n2.next_node = n3

# Traverse and print
current = n1
while current
  puts "#{current.value} -> "
  current = current.next_node
end
