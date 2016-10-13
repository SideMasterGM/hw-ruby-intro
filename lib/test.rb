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

if sum_to_n?([1,2,3], 7) == true
    print "Igual"
else 
    print "No es igual"
end