
def sluggish(array) # O(n^2)
    sorted = false
    until sorted
        sorted = true
        (0...array.length-1).each do |idx|
            if array[idx].length > array[idx+1].length
                array[idx], array[idx+1] = array[idx+1], array[idx]
                sorted = false
            end
        end
    end
    return array[-1]
            

end

def dominant(array, &prc)
    _dominant(array, &prc).first
end

def _dominant(array, &prc) # O(n log n)
    return array if array.length <= 1
    mid = array.length / 2
    left = array.take(mid)
    right = array.drop(mid)

    merge(_dominant(left, &prc), _dominant(right, &prc), &prc)
    
end

def merge(left, right, &prc) 
    prc ||= Proc.new{ |a, b| a <=> b }
    word = ""
    sorted = []
    until left.empty? || right.empty?
        if prc.call(left.first.length, right.first.length, &prc) == -1
            word = right.shift
        else word = left.shift
        end
    end

    [word]
    
end

def clever(array) # O(n)
    answer = array.first
    array.each do |word|
        if word.length > answer.length
            answer = word
        end
    end
    answer
end

def slow_dance(direction, tiles_array) #> O(n)
    (0...tiles_array.length).each do |i|
        if direction == tiles_array[i]
            return i
        end
    end
end

def fast_dance(direction, new_tiles_data_structure) # O(1)
    new_tiles_data_structure[direction]
end

array = ['fish', 'fiiish','fiiiiish', 'fiiiissshhhhhh', 'fiiiish', 'ffiiiiisshh', 'fffish', 'fsh']
 p sluggish(array)
 p dominant(array)
 p clever(array)
#  p array.sort_by(&:length)[-1]

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

tiles_hash = {
        "up" => 0,
        "right-up" => 1,
        "right"=> 2,
        "right-down" => 3,
        "down" => 4,
        "left-down" => 5,
        "left" => 6,
        "left-up" => 7
    }

p slow_dance("up", tiles_array) #> 0
p slow_dance("right-down", tiles_array) #> 3
p fast_dance("up", tiles_hash) #> 0
p fast_dance("right-down", tiles_hash) #> 3
