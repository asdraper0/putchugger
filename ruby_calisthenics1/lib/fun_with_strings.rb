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
  def anagram_groups # i know this is a weirdly convoluted solution but hey it works
    a = self.split(' ')
    b = []
    c = 0
    d = 0
    e = 0
    
    a.each do |x|
      a.each do |y|
        if x.chars.sort == y.chars.sort && x != y
          b[c] = [x, y]
          c += 1
          e = 1
        elsif y == a[a.length - 1] && e == 0
          b[c] = [x]
          c += 1
        end
        d += 1
      end
      d = 0
      e = 0
    end
    
    return b
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
