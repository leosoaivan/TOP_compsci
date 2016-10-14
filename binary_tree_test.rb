require './binary_tree.rb'

x = 10.times.map { Random.rand(20) }

p x
puts ""
p build_tree(x).lchild
