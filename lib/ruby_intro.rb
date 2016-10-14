# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  b = 0
  arr.each {
    |v| b += v
  }
  
  return b

end

def max_2_sum arr
  nuevo = arr.max(2)
  
  if nuevo.empty?
    return 0;
  elsif nuevo.length == 1
    return nuevo[0]
  else
    b = 0
    nuevo.each {
      |valor| b += valor 
    }
    return b
  end
end

def sum_to_n? arr, n
  
  i = 0
  s = 0
  pos = arr.length - 1
  
  for i in (i..pos) 
    j = 0
    
    for j in (j..pos)
      
      if j > i 
        s = arr[j] + arr[i]
        
        if s == n
          return true
        end
        
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif s[0] == "#"
    return false
  else
    return s[0].match(/a|e|i|o|u|A|E|I|O|U/).nil? ? true : false
  end
end

def binary_multiple_of_4? s
  
  if s =~ /^[0-1]+$/
    if s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
  
end

# Part 3

class BookInStock
  #Permite acceder a las variables de un objeto
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
