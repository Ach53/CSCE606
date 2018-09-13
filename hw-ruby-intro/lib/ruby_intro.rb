# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each do |i| s = s+i end
  return s
end

def max_2_sum arr
  if arr.length == 0 
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr2 = arr.sort
    arr2[-1] + arr2[-2]
  end
end

def sum_to_n? arr, n
  boolean = false
  arr.each_index do |i|
    arr2 = arr[i+1,arr.length]
    arr2.each_index do |j|
      boolean |= ((arr[i]+arr2[j]) == n)
    end
  end
  return boolean
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  s =~ /^[01]*00$|^0$/
end

# Part 3

class BookInStock
  #attr_accessor :isbn, :price
  def initialize(isbnum, prc)
    if isbnum == ""
      raise ArgumentError.new("isbn should be a string")
    end
    if prc <= 0
      raise ArgumentError.new("Price should be > 0")
    end
    @isbn = isbnum
    @price = prc
  end
  
  def isbn
    @isbn
  end
  def isbn=(isbnum)
    @isbn = isbnum
  end
  def price
    @price
  end
  def price=(prc)
    @price = prc
  end
  
  def price_as_string()
    @price = '%.2f' % @price
    puts @price
    prc_str = "$" + @price.to_s
  end
end
