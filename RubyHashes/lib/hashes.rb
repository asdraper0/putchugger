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
    result = {}
    count = 0
    
    contacts.each do |x, y|
        # x = key, y = value
        # a = name,  b = email
        if contact_info[0].empty?
            result[x.to_sym] = {}
        else
            result[x.to_sym] = {email: contact_info[count][0], phone: contact_info[count][1]}
        end
        
        count += 1
    end
    
    return result
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
