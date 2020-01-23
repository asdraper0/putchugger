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
  if (arr.length == 0)
    return false
  end
  if (arr.length == 1)
    return false
  end
  sorted_arr = arr.sort
  head =0
  tail = sorted_arr.length-1
  
  while head < tail 
    current_sum = sorted_arr[head] + sorted_arr[tail]
    if current_sum == n
      return true
    elsif current_sum < n
      head = head + 1
    else 
      tail = tail - 1
    end
  end
  return false
end