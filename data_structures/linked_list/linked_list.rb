class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  def read(index)
    current_node = first_node
    current_index = 0
    while current_index < index do
      current_node = current_node.next_node
      current_index += 1
      return nil unless current_node
    end
    current_node.data
  end

  def index_of(value)
    current_node = first_node
    current_index = 0

    loop do
      return current_index if current_node.data == value
      current_node = current_node.next_node
      current_index += 1
      break unless current_node
    end
    nil
  end

  def insert_at_index(index, value)
    new_node = Node.new(value)

    if index == 0
      new_node.next_node = first_node
      self.first_node = new_node
      return
    end

    current_node = first_node
    current_index = 0
    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def delete_at_index(index)
    if index == 0
      self.first_node = first_node.next_node
      return
    end

    current_node = first_node
    current_index = 0
    while current_index < index - 1 do
      current_node = current_node.next_node
      current_index += 1
    end
    node_after_deleted_node = current_node.next_node.next_node
    current_node.next_node = node_after_deleted_node
  end

  def print
    current_node = first_node
    while current_node
      puts current_node.data
      current_node = current_node.next_node
    end
  end

  def last
    current_node = first_node
    loop do
      return current_node.data if current_node.next_node.nil?
      current_node = current_node.next_node
    end
  end

  # def reverse!
  #   nodes = []
  #   current_node = first_node
  #   loop do
  #     nodes << current_node
  #     current_node = current_node.next_node
  #     break if current_node.nil?
  #   end

  #   nodes = nodes.reverse
  #   nodes.last.next_node = nil
  #   self.first_node = nodes.first
  #   (0...(nodes.size - 1)).each_with_index do |node, index|
  #     nodes[index].next_node = nodes[index + 1]
  #   end

  #   self
  # end

  # chapter 14 exercise 4*
  def reverse!
    previous_node = nil
    current_node = first_node
    loop do
      next_node = current_node.next_node
      current_node.next_node = previous_node
      previous_node = current_node
      break if next_node.nil?
      current_node = next_node
    end
    self.first_node = current_node
    self
  end

  # chapter 14 exercise 5*
  def delete_middle_node(node)
    node.data = node.next_data.data
    node.next_node = node.next_node.next_node
  end
end

# to create a linked list

node_1 = Node.new("once")
node_2 = Node.new("upon")
node_3 = Node.new("a")
node_4 = Node.new("time")

node_1.next_node = node_2
node_2.next_node = node_3
node_3.next_node = node_4

list = LinkedList.new(node_1)

# reading

puts list.read(3)

# searching

puts list.index_of('time')

# print

list.print

# last

puts list.last

# reverse

list.reverse!.print
