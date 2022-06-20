#Given an array which may contain duplicates, print all elements, but print no duplicates.
#e.g. [1,1,2,3,3,4,5,6,6,6,6] should print 1 2 3 4 5 6.

#Using Hashing
#Time-complexity: O(n),Auxiliary-space:O(n) {for hash}

def print_distinct(a)
    n=a.length
    hash=Hash.new()
    for i in 0...n
        unless hash[a[i]]
            hash[a[i]]=1
            print "#{a[i]} " 
        end
    end      
    return
end
        
print_distinct([4, 7, 4, 1, 1, 4, 8, 10, 6, 7]) # => 4 7 1 8 10 6 
