# Problem:
=begin
Given an array of size N ,taht has elements in range 1 to N ,all elements in the arrayb are unique, 
Find the missing number.
e.g.
array = [1,5,2,4,6]
answer = 3
=end

#(No integer overflow)- Take bitwise XOR of all elements of the array with the numbers in given range, 
#As( a XOR a == 0 ) all numbers present in array will xor out and become zero except the missing number. 
# Time-complexity = O(n)

def find_missing_number(a)
    n = a.length+1
    missing_element = 0
    (1..n).each {|num| missing_element^= num}
    for x in a
        missing_element^=x
    end
  return missing_element
end

print find_missing_number([1, 6, 8, 3, 4, 5, 2]) # Missing number is 7
