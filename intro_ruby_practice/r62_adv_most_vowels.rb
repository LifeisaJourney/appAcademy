#Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
    count = {}
    splitter =sentence.split(" ")
    splitter.each {|ele| count[ele] = vowel_count(ele)}

    sorted = count.sort_by{|k, v| v}
    return sorted[-1][0]

end

def vowel_count(word)
    count = 0
    vowels = "aeiou"
    word.each_char do |char|
        if vowels.include?(char)
            count+=1
        end
    end
    return count
end

print most_vowels("what a wonderful life") #=> "wonderful"