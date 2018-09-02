def add (x,y)
    x + y
end

def subtract (x,y)
    x - y
end

def sum (arr)
    arr.inject(0, :+)
end

def multiply (arr)
    arr.inject(1, :*)
end

def power (x, y)
    x ** y
end

def factorial (num)
    return 1 if num <= 1
    (1..num).inject(1, :*)
end