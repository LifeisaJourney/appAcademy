#return inclusive values in array from the array
def range(min, max)
    i = 0 
    inclusive=[]
    while i <= max
        
        if i <= max && i >= min 
        inclusive << i 
        end 
        
        i+=1
    end
    return inclusive
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
