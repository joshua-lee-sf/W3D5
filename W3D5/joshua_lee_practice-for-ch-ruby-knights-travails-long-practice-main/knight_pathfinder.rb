require "/Users/joellee/Desktop/AppAcademyGit/aA_classwork/W3D5/joshua_lee_intro_data_structures_PolyTreeNode/lib/tree_node.rb"

class KnightPathFinder

  attr_reader :root_node, :considered_positions, :position

  def self.valid_moves(pos)
    possible_moves = [[-2,-1],[-2,1], [-1,2],[-1,-2], [1,2], [1,-2], [2,-1] , [2,1]]
    row, col = pos
    selected_possible_moves = possible_moves.map do |sub_array| #[1,2]
      [sub_array[0] += row, sub_array[1] += col]
    end
    selected_possible_moves_1 = selected_possible_moves.select {|sub_array| sub_array[0] >= 0 && sub_array[1] >= 0 && sub_array[0] < 8 && sub_array[1] < 8 }
    selected_possible_moves_1
  end

  
  def initialize(position)
    @position = position
    @root_node = PolyTreeNode.new(position)
    # move_set = self.build_move_tree(root_node)
    @considered_positions = [position]
  end


  def new_move_position(pos)
    possible_moves = KnightPathFinder.valid_moves(pos)
    
    @considered_positions.each do |move|
      if possible_moves.include?(move)
        possible_moves.delete(move)
      end
    end
    
    possible_moves.each do |i|
      if !@considered_positions.include?(i)
        @considered_positions << i
      end
    end
    possible_moves
  end

  def build_move_tree(target=nil)
    queue = [@position]
  end
end