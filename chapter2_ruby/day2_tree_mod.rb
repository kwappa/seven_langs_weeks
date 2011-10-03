# -*- coding: utf-8 -*-
class Tree
  attr_accessor :node_name, :children

  def initialize(value)
    (name, children) = value.shift
    @node_name = name
    @children  = []
    children.each { |c| @children << Tree.new(Hash[*c]) }
  end

  def visit_all &block
    visit &block
    @children.each { |c| c.visit_all &block }
  end

  def visit &block
    block.call self
  end
end
