def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(numbers)
    numbers.inject(0) { |sum, i| sum + i}
end

def multiply(*numbers)
    numbers.inject(1) { |product, i| product * i}
end

def power(a, b)

    result = 1;

    b.times() do 
        result *= a
    end

    return result
end

def factorial(n)

    result = 1;

    until n <= 1
        result *= n
        n -= 1
    end

    return result
end