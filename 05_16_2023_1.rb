list_1= [ 0, 2, 4, 5, 9]
list_2= [ 1, 3, 5, 7, 9]


# Intersection: Given two (singly) linked lists, determine if the two lists intersect.
def intersect(list_1, list_2)
    for i in list_1 do
        for j in list_2 do
            if i == j && list_1.find_index(i) == list_2.find_index(j)
                return "Number: #{i}, Intersection: #{list_1.find_index(i)}"
            end
        end
    end
    return false

end

puts intersect(list_1, list_2)

# Loop Detection: Given a circular linked list, implement an algorithm that returns the node at the beginning of the loop.

circuler_list = ['A', 'B', 'C', 'D', 'C']

def find_loop(list)
    count = Hash.new(0)
    list.each do |value|
        count[value] += 1 
    end
    
    return count.max_by{|values,max| max}

end

puts find_loop(circuler_list)
