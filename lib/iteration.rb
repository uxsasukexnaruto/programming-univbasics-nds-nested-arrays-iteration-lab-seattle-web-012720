def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  expression = []
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_index = 0  
  while src[row_index] do 
    
    
      expression.push("I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza")
       
    
    row_index += 1 
  end 
  expression
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  larger = []
  # that are in the inner Arrays
  count = 0 
  while src[count] do 
    larger.push(src[count].max)
    count += 1 
  end
  larger
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  total = 0 
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  count = 0 
  while src[count] do 
    row_count = 0 
    
      if(src[count][0] % 2 == 0 && src[count][1] % 2 == 0) 
        total += src[count][0]
        total += src[count][1]
      end 
    count += 1 
  end 
  total 
end
