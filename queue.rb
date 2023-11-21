class Node
  attr_accessor :value, :next_value

  def initialize(value)
    @value = value
    @next_value = nil
  end
end

class Queue
  attr_accessor :length, :head, :tail

  def initialize
    @length = 0
    @head = nil
    @tail = nil
  end

  def enqueue(value)
    node = Node.new(value)  # Create a new node
    @length += 1            # Update the Queue length 

    if @head.nil?           # Check if head is nil
      @head = @tail = node  # Set the new node as head and tail
      return                # ends the enqueue
    end

    @tail = node            # Tail receives the new node
  end

  def dequeue
    return nil if head.nil? # Nothing to dequeue

    @length -= 1            # Update length to -1

    head = @head            # Save current head in a variable
    @head = head.next_value # Update head to the second item

    head.next_value = nil   # Breaks link between the old head

    head.value              # Return the removed value
  end

  def peek
    return nil if head.nil? # Checking again if head is nil

    head.value              # Returns the head value
  end
end
