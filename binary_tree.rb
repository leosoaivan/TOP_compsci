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

class BST
  attr_accessor :root

  def initialize
    @root = nil
  end

  #Recursivley builds a balanced binary search tree with a sorted array
  def balanced_tree(ary, parent = nil)
    if ary.length <= 0
      return nil
    elsif ary.length == 1
      new_node = Node.new(ary[0], parent)
    else
      mid_ind = ary.length / 2
      if @root.nil?
        @root = Node.new(ary[mid_ind], parent)
        new_node = @root
      else
        new_node = Node.new(ary[mid_ind], parent)
      end
      new_node.lchild = balanced_tree(ary[0..mid_ind - 1], new_node)
      new_node.rchild = balanced_tree(ary[mid_ind + 1..-1], new_node)

      new_node
    end
  end

  #Recursiverly builds an unbalanced binary search tree with an unsorted array
  def build_tree(ary)
    @root = Node.new(ary[0])
    temp_root = @root
    ary[1..-1].each do |elem|
      insert(temp_root, elem)
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

  def breadth(target_value)
    queue = [@root]
    until queue.empty?
      if queue[0].value == target_value
        return queue[0]
      else
        queue << queue[0].lchild unless queue[0].lchild.nil?
        queue << queue[0].rchild unless queue[0].rchild.nil?
        queue.shift
      end
    end

    return nil if queue.empty?
  end

  #Pre-Order Traversal of binary search tree instances
  def depth(target_value)
    stack = [@root]
    until stack.empty?
      if stack[0].value == target_value
        return stack[0]
      else
        current = stack[0]
        stack.shift
        stack.unshift(current.rchild) unless current.rchild.nil?
        stack.unshift(current.lchild) unless current.lchild.nil?
      end
    end

    return nil if stack.empty?
  end

  def depth_recs(target_value, current = @root)
    return current.value if target_value == current.value

    left = depth_recs(target_value, current.lchild) unless current.lchild == nil
    right = depth_recs(target_value, current.rchild) unless current.rchild == nil

    left || right
  end

end
