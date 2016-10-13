class Node
  attr_accessor :value, :parent, :lchild, :rchild

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @lchild = nil
    @rchild = nil
  end
end

# Builds a balance binary search tree using a sorted array
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

x = [1,2,3,4,5]

build_tree_recs(x)
