def echo(n)
    n
end

def repeat(n, i = 2)
    result = ""
    i.times() {result += echo(n) + " "}
    return result.strip!()
end

def shout(n)
    n.upcase()
end

def start_of_word(word, letters = 1)
    word[0..letters - 1]
end

def first_word(w)
    w.split(" ")[0]
end

def titleize(w)
    words = w.split(" ")

    result = ""

    words.each() {
        |i| 
        if(i == "and" || i == "the" || i == "or" || i == "of" || i == "over")
            result += i + " "
        else
            result += i[0].upcase + i[1..-1] + " "
        end
    }

    result.strip!
    result[0..0].upcase + result[1..-1]
end