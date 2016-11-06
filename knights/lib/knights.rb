require 'pry'

class KnightNode
  attr_accessor :location, :parent, :children

  def initialize(location, parent = nil)
    @location = location
    @parent = parent
    @children = []
  end
end

class KnightGraph

  attr_accessor :path

  KNIGHT_MOVES = [
    [-2, 1], [-2, -1], [-1, 2], [-1, -2],
    [1, -2], [1, 2], [2, 1], [2, -1]
  ]

  def initialize(knight_node)
    @knight_node = knight_node
    @queue = [@knight_node]
    @visited = [@knight_node.location]
  end

  def build_graph
    @queue.each do |node|
      find_children(node)
      node.children.each do |child|
        @visited << child
        new_node = KnightNode.new(child, node)
        @queue << new_node
      end
    end
  end

  def find_children(node)
    KNIGHT_MOVES.each do |move|
      child = [node.location[0] + move[0], node.location[1] + move[1]]
      if valid_moves(child) && unvisited_moves(child)
        node.children << child
      end
    end
  end

  def valid_moves(child)
    true if child[0].between?(0, 7) && child[1].between?(0, 7)
  end

  def unvisited_moves(child)
    true if !@visited.include?(child)
  end

  def search_graph(destination)
    until @queue[0].location == destination
      @queue.insert(-1, @queue[0])
      @queue.delete_at(0)
    end
  end

  def print_path
    path = [@queue[0].location]
    temp_node = @queue[0]
    until temp_node.parent.nil?
      path.unshift(temp_node.parent.location)
      temp_node = temp_node.parent
    end
    path
  end
end
