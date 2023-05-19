class Stack
    attr_reader :stack
    
    def initialize
      @stack = []
      # create ivar to store stack here!
    end
  
    def push(el)
      # adds an element to the stack
      @stack << el
  
    end
  
    def pop
      # removes one element from the stack
      @stack.pop
    end
  
    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end


  class Queue
    
    attr_reader :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

  end

  class Map
    attr_reader :map

    def initialize
        @map = []
    end

    def set(key,value)
        (0...@map.length).each do |idx|
            if @map[idx][0] == key
                @map[idx][1] = value
                return
            end

        end
        @map << [key, value]
    end
    
    def get(key)
        @map.each do |pairs|
            if pairs[0] == key
                return pairs[1]
            end
        end
        p "key does not exist"
    end

    def delete(key)
        @map.each_with_index do |pairs, i|
            if pairs[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
        @map
    end

  end