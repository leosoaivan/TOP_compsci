require 'pry'

class Node
  attr_accessor :value, :parent, :lchild, :rchild

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @lchild = nil
    @rchild = nil
  end
end

# Recursiverly builds a balance binary search tree with a sorted array
def build_tree_recs(ary, parent = nil)
  if ary.length <= 0
    return nil
  elsif ary.length == 1
    new_node = Node.new(ary[0], parent)
    new_node
  else
    mid_ind = ary.length / 2
    new_node = Node.new(ary[mid_ind], parent)
    new_node.lchild = build_tree_recs(ary[0..mid_ind - 1], new_node)
    new_node.rchild = build_tree_recs(ary[mid_ind + 1..-1], new_node)

    new_node
  end
end

#Recursiverly builds an unbalanced binary search tree with an unsorted array
def build_tree(ary)
  root = Node.new(ary[0])
  ary[1..-1].each do |elem|
    insert(root, elem)
  end
  root
end

def insert(root, elem, parent = nil)
  if root.nil?
    root = Node.new(elem, parent)
    parent.value < elem ? parent.rchild = root : parent.lchild = root
  elsif elem > root.value
    parent = root
    root = root.rchild
    insert(root, elem, parent)
  elsif elem < root.value
    parent = root
    root = root.lchild
    insert(root, elem, parent)
  else
    nil
  end
end
