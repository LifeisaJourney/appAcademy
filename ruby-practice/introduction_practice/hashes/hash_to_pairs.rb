#takes hash 
#returns a 2D array with every key-value pair in its' own array
def hash_to_pairs(hash)
    new_arr = []
    hash.each do | k , v |
        new_arr << [k,v]
    end
    return new_arr
end
  
  
  print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
  puts
  
  
  print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
  puts
  