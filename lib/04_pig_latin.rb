def translate (sentence)
    arr = sentence.split.map do |word|
        is_capitalized = ("A".."Z").include?(word[0])
        q = word.index("q")
        idx = word.index(/[aeiouAEIOU]/)
        idx += 1 if q != nil && q + 1 == idx
        if idx != 0
            word = word[idx..-1] + word[0...idx] + "ay"
        else
            word = word + "ay"
        end
        word.capitalize! if is_capitalized == true
        word
    end
    arr.join(" ")
end