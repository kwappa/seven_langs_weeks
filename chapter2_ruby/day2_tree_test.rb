# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'day2_tree')
ruby_tree = Tree.new(
                     "Ruby",
                     [
                      Tree.new("Reia"),
                      Tree.new("MacRuby"),
                      ]
                     )

puts "Visiting a node"
ruby_tree.visit { |node| puts node.node_name }
puts

puts "visitinge entire tree"
ruby_tree.visit_all  { |node| puts node.node_name }

