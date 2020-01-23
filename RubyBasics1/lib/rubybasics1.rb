# Lab 1
# Part I
def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

# Part II
def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  end
  
  first = -255
  second = -255
  
  arr.each do |x|
    if x > first
      first = x
    elsif x > second
      second = x
    end
  end
  
  return first + second
end

# Part III
def sum_to_n? arr, n
  if arr.size < 2
    return false
  end 
  
  a = 0
  b = 0
  
  arr.each do |x|
    b = 0
    arr.each do |y|
      if a != b && x + y == n
        return true
      end
      b += 1
    end
    a += 1
  end
  
  return false
end