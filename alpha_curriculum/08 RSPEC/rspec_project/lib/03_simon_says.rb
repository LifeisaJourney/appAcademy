def echo(word)
    empty_str = ""
    return empty_str << word
end

def shout(word)
    return "#{word.upcase}"
end

def repeat(word, repeat=2)
    return Array.new(repeat, word).join(" ")
    #Array.new(#, string) will result in ["string"]
end

def start_of_word(word, int)
    real = int - 1
    # p word.split("")[0]
    new_arr = word.split("")
    return new_arr[0..real].join("")
end

def first_word(word)
    #
end