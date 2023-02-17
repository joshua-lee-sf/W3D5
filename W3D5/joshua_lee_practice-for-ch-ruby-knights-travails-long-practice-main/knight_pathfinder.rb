require "/Users/joellee/Desktop/AppAcademyGit/aA_classwork/W3D5/joshua_lee_intro_data_structures_PolyTreeNode/lib/tree_node.rb"

class KnightPathFinder

  def self.valid_moves(pos)
  end
  
  def initialize(pos)
    @root_node = pos
    @new_node = PolyTreeNode.new(@root_node)
    move_set = self.build_move_tree(@root_node)
  end

  def build_move_tree
  end

end