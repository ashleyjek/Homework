class GraphNode

    attr_accessor :value, :neighbors
    attr_reader :bfs

    def initialize(value)
        self.value = value
        self.neighbors = []

    end

    def bfs(starting_node, target_value)
        visited = Set.new()
        return nil if (visited.include?(starting_node.val))

        starting_node.neighbors.each do |neighbor|
            if neighbor.neighbors.include?(target_value)
                return neighbor.value
            else visited.add(neighbor.val) 
                bfs(neighbor, target_value)
            end
        end
       
    end

    def inspect 
        "#<GraphNode:#{value}, #{neighbors}>"
    end

end

p a = GraphNode.new('a')
p b = GraphNode.new('b')
p c = GraphNode.new('c')
p d = GraphNode.new('d')
p e = GraphNode.new('e')
p f = GraphNode.new('f')
p a.neighbors = [b, c, e]
p c.neighbors = [b, d]
p e.neighbors = [a]
p f.neighbors = [e]
p bfs(a, f)