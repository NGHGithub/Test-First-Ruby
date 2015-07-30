def translate(phrase)
    vowels = ["a", "e", "i" , "o", "u"]

    words = phrase.split(" ")

    (words.inject("") { |result, word|
        while(!vowels.include?(word[0]))
            if(word[0..1] == "qu")
                word = word[2..-1] + word[0..1]
            else
                word = word[1..-1] + word[0]
            end
        end

        result += word + "ay" + " "
    }).strip!

end