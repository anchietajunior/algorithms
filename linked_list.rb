class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def add(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = new_node
    end
  end

  def print_list
    current = @head
    while current
      puts "#{current.value} -> "
      current = current.next_node
    end
  end
end

list = LinkedList.new
list.add(1)
list.add(2)
list.add(3)

list.print_list
