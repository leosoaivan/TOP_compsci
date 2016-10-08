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
    if @head.nil? && @tail.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(data)
    node = Node.new(data)
    if @head.nil? && @tail.nil?
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
    if size == 0
      nil
    elsif size == 1
      @head = nil
      @tail = nil
    else
      temp = @head
      (size - 2).times do
        temp = temp.next_node
      end
      temp.next_node = nil
      @tail = temp
    end
  end

end

x = LinkedList.new
