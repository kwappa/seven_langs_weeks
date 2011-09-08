# -*- coding: utf-8 -*-
class Tree
  attr_accessor :children, :node_name

  def initialize(value)
    value = value.to_a.first if value.instance_of? Hash
    (name, children) = value.to_a
    @node_name = name
    @children  = children.inject([]) { |r, c| r << Tree.new(c) ; r } if children
  end

  def visit_all(&block)
    visit &block
    @children.each { |c| c.visit_all &block } if @children
  end

  def visit(&block)
    block.call self
  end
end
