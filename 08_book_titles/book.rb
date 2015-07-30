class Book
    
    def initialize()
        @title = ""
    end

    def title=(t)
        words = t.split(" ")

        result = ""

        words.each() {
            |i| 
            if(i == "and" || i == "the" || i == "or" || i == "of" || 
                i == "over" || i == "in" || i == "a" || i == "an")
                result += i + " "
            else
                result += i[0].upcase + i[1..-1] + " "
            end
        }

        result.strip!()
        @title = result[0..0].upcase + result[1..-1]
    end

    def title()
        @title
    end
end