class Node
  attr_accessor :data, :next_node, :previous_node

  def initialize(data)
    @data = data
  end
end

class DoublyLinkedList
  attr_accessor :first_node, :last_node

  def initialize(first_node = nil, last_node = nil)
    @first_node = first_node
    @last_node = last_node
  end

  def insert_at_end(value)
    new_node = Node.new(value)

    if first_node.nil?
      @first_node = new_node
      @last_node = new_node
    else
      new_node.previous_node = @last_node
      @last_node.next_node = new_node
      @last_node = new_node
    end
  end

  def print_in_reverse
    current_node = last_node
    while current_node
      puts current_node.data
      current_node = current_node.previous_node
    end
  end
end

# to create a doubly linked list

list = DoublyLinkedList.new

list.insert_at_end("once")
list.insert_at_end("upon")
list.insert_at_end("a")
list.insert_at_end("time")

# print in reverse

list.print_in_reverse
