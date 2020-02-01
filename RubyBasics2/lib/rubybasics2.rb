# Strings and Regular Expressions

# Part I
def hello(name)
  return 'Hello, ' + name
end

# Part II
def starts_with_consonant? s
  if s.nil? || s == ''
    return false
  end 
  
  case s
  when /^[aeiouAEIOU|0-9].*/, /^[^a-zA-Z0-9].*/
    return false
  else
    return true
  end
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end