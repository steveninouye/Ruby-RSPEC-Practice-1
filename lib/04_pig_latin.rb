def translate (sentence)
    arr = sentence.split.map do |word|
        q = word.index("q")
        idx = word.index(/[aeiou]/)
        idx += 1 if q != nil && q + 1 == idx
        if idx != 0
            word[idx..-1] + word[0...idx] + "ay"
        else
            word + "ay"
        end
    end
    puts arr
    arr.join(" ")
end