module FunWithStrings
  def palindrome?
    a = self.downcase.gsub(/\W/, '')
    b = a.slice(0, a.length / 2)
    c = a.slice((a.length / 2) + (a.length % 2), a.length / 2).reverse
    
    return b == c
  end
  def count_words
    a = self.downcase.split(/\W/)
    b = Hash.new
    
    a.each do |x|
      if x != ""
        if b.has_key?(x)
          b[x] += 1
        else
          b[x] = 1
        end
      end
    end
    
    return b
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
