#!/usr/bin/env ruby

class Node
  attr_accessor :next_node, :data

  def initialize(data, next_node = nil)
    @data = data
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def size
    count = 0
    if @head.nil?
      return 0
    else
      while @head != NIL
        count += 1
        @head = @head.next_node
      end
      count
    end
  end

end

new_list = LinkedList.new
