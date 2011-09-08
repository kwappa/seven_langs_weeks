# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'day2_tree_mod')
ruby_tree = Tree.new(
                     {
                       'grandpa' => {
                         'dad' => {
                           'child 1' => [],
                           'child 2' => [],
                         },
                         'uncle' => {
                           'child 3' => [],
                           'child 4' => [],
                         },
                       }
                     }
                     )

puts "Visiting a node"
ruby_tree.visit { |node| puts node.node_name }
puts

puts "visitinge entire tree"
ruby_tree.visit_all  { |node| puts node.node_name }

