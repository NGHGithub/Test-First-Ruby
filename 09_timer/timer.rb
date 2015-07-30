class Timer
    def initialize()
        @seconds = 0
        @time_string = "00:00:00"
    end

    def seconds=(s)
        @seconds = s

        sec = "#{s % 60}"
        min = "#{s / 60 % 60}"
        hour = "#{s / 60 / 60}"


        if (sec.length() == 1)
            sec = "0#{sec}"
        end

        if (min.length() == 1)
            min = "0#{min}"
        end

        if (hour.length() == 1)
            hour = "0#{hour}"
        end

        @time_string = "#{hour}:#{min}:#{sec}"
    end

    def seconds
        @seconds
    end

    def time_string
        @time_string
    end
end