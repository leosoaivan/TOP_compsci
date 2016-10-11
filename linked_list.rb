#!/usr/bin/env ruby
require 'pry'

class Node
  attr_accessor :next_node, :data

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    count = 0
    if @head.nil?
      return 0
    else
      temp = @head
      while temp != NIL
        count += 1
        temp = temp.next_node
      end
      count
    end
  end

  def head
    if @head.nil?
      return nil
    else
      return @head.data, (@head.next_node.nil? ? nil : @head.next_node.data)
    end
  end

  def tail
    if @head.nil?
      return nil
    else
      return @tail.data, @tail.next_node
    end
  end

  def at(index)
    temp = @head
    (index).times do
      temp = temp.next_node
    end
    temp.data
  end

  def pop
    popped = @head
    temp = @head
    if size == 0
      nil
    elsif size == 1
      @head, @tail = nil,nil
    else
      (size - 2).times { temp = temp.next_node }
      popped = temp.next_node
      temp.next_node = nil
      @tail = temp
    end
    popped
  end

  def contains?(data)
    temp = @head
    result = false
    self.size.times do
      temp.data == data ? result = true : temp = temp.next_node
    end
    result
  end

  def find(data)
    if @head
      temp = @head
      counter = 0
      while temp
        if temp.data == data
          return counter
        else
          counter += 1
          temp = temp.next_node
        end
      end
      nil
    else
      nil
    end
  end

  def to_s
    if @head
      temp = @head
      string = ""
      while temp
        string += "( #{temp.data} ) -> "
        temp = temp.next_node
      end
      string += "nil"
    else
      nil
    end
  end

end
