#takes string and returns integer counter
#the string can be upcase or downcase

# def hand_score(hand)
#     score = 0 
#     hand.each_char do |word|
    
#     if (word == "a" || word == "A")
#         score += 4
#     elsif (word == "k" || word =="K")
#         score += 3
#     elsif (word == "q" || word == "Q")
#         score += 2 
#     elsif (word =="j" || word == "J")
#         score += 1
#     end
#     return score
# end

# puts hand_score("AQAJ") #=> 11
# puts hand_score("jJka") #=> 9


def hand_score(hand)
    points = {
        "A" => 4,
        "K" => 3,
        "Q" => 2,
        "J" => 1
    }
    score = 0
    hand.each_char do |char|
        score += points[char.upcase]
    end
    return score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9