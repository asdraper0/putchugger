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
  # YOUR CODE HERE
end