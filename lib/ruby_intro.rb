# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
sum=0  
arr.each { |a| sum+=a }
return sum
end  


def max_2_sum arr
  if arr.length() == 0
    return 0
  elsif arr.length() ==1
    return arr[0]
  else
    arr =arr.sort
    return arr[-2]+arr[-1]
  end  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if(arr.length() < 2)
    return false
  else
    !!arr.combination(2).detect { |x, y| x + y == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
 return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? 
    return false
  else
    /\A[b-df-hj-np-tv-z]/i.match?(s[0])
  end  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty? || s.match(/^[10]*$/).nil?
    return false
  else
    return s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

def initialize(isbn,price)
    if (isbn.empty?) || (price<=0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
    
end

  def price_as_string
      return  "$%.2f" % @price
  end
end 
