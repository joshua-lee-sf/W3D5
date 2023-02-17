require 'byebug'

class PolyTreeNode
  
  attr_reader :value, :parent, :children

  def  initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(new_parent_node)
    @parent.children.delete(self) if @parent != nil
    @parent = new_parent_node if @parent != new_parent_node
    @parent.children << self if !@parent.nil? && !@parent.children.include?(self)
  end


  def add_child(child_node)
    child_node.parent= self
  end

  def remove_child(child_node)
    if child_node.parent == nil 
      raise "error!"
    else
      child_node.parent=nil
    end
  end

  def dfs(target_value)
    return self if self.value == target_value
    
    self.children.each do |child|
      result = child.dfs(target_value)
      return result unless result.nil?
    end

    nil
  end

  def bfs(target_value)
    queue = [self]

    until queue.empty?
      node = queue.shift
      return node if node.value == target_value
      queue.concat(node.children)
    end
    nil
  end

end