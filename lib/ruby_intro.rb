## When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
 return arr.reduce(0, :+)
end

def max_2_sum(arr)
  arr = arr.max(2)
  return arr.inject(0){|sum,x| sum + x}
end

def sum_to_n?(arr, n)
  return false if arr.empty? && n.zero?
  if arr.combination(2).any? {|a, b| a + b == n}
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant?(s)
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  check = s.to_i(2)
  if s=='' or s=~/[^01]/
    return false
  end
  if check%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price
  
  def initialize isbn, price
    raise ArgumentError.new("ISBN Vlue is Empty") if isbn.empty?()
      @isbn = isbn
    raise ArgumentError.new("Price must be greater than 0") if price <= 0
      @price = price
  end
  
  def price_as_string
    return "$" + ("%.2f" % price).to_s
  end
        
end
