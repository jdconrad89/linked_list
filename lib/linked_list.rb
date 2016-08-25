
require_relative "node"
class LinkedList
  attr_accessor :head, :data

  def initialize
    @head = Node.new(data)
    @append
    @counter = 0

  end

  def tail
  position = @head
    until position.next_node == nil
      position = position.next_node
    end
  end

  def append(data)
    if @head != nil
      @head = Node.new(data)
    else
      current = @head
      while current.next_node
        current = next_node
      end
      next_node = Node.new(data)
      data
    end
    @counter += 1
  end

  def count
    @counter
  end

  def to_string
    data_list = ""
    position = @head
    data_list << position.data

    while position.next_node != nil
      position = position.next_node
      data_list << "#{position.data}"
    end
    data_list
  end

  def prepend
    if @head != nil
      @head = Node.new(data)
    else
      current = @head
      @head = Node.new(data)
      @head.next_node = current
      data
    end
    @counter += 1
  end
end
