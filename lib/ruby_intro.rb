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
    return valor
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
      
      #[0][1] x [1][0] x [2][0] x [3][4]
      #[0][2] - [1][2] x [2][1] 
      #[0][3] - [1][3] - [2][3]
      #[0][4] - [1][4] - [2][4]
      #[0][5] - [1][5] - [2][5]
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
