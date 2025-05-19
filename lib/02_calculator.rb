def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 1 if n <= 1
  (1..n).inject(:*)
end