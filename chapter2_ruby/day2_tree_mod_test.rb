# -*- coding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'day2_tree_mod')
family_tree = Tree.new( 'granpa' => {
                          'dad' => {
                            'child 1' => [],
                            'child 2' => [],
                          },
                          'uncle' => {
                            'child 3' => [],
                            'child 4' => [],
                          },
                        }
                       )

family_tree.visit { |c| puts c.node_name }
family_tree.visit_all { |c| puts c.node_name + "/#{c.children.count}" }
