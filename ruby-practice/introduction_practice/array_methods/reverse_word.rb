# Takes string
# Returns order of characters in each word reversed: each?
# Do not word not order
# Return in string
def reverse_words(sent)
    empty_string = ""
    arr= sent.split(" ")
    arr.each do |part|
    new_string= part.reverse
    #new_string = part.join(" ")
     empty_string = empty_string + " " + new_string
  end
  	return empty_string
end
  
  puts reverse_words('keep coding') # => 'peek gnidoc'
  puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
  