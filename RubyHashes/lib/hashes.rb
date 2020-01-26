# RubyHashes
# Part I
def array_2_hash emails, contacts
    result = {}
    count = 0
    
    contacts.each do |x, y|
        if emails.empty?
            result[x] = ''
        else
            result[x] = emails[count]
        end
        
        count += 1
    end
    
    return result
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
