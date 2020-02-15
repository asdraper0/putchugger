# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize(isbn, price)
        raise ArgumentError, 'ISBN cannot be blank' unless isbn != ''
        raise ArgumentError, 'Price cannot be less than or equal to zero' unless price > 0
        
        @isbn = isbn
        @price = price
    end
end