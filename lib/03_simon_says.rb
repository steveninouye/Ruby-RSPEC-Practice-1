def echo (str)
    str
end

def shout (str)
    str.upcase
end

def repeat (str, num_times=2)
    Array.new(num_times){str}.join(" ")
end

def start_of_word (str, num_ltrs)
    str[0...num_ltrs]
end

def first_word (sentence)
    sentence.split[0]
end

def titleize (str)
    little_words = ["and", "the", "over"]
    arr = str.split.map.with_index do |word, idx|
        if idx == 0 || !little_words.include?(word)
            word = word[0].upcase + word[1..-1]
        end
        word
    end
    arr.join(" ")
end