# module Loggable
#     private
#     def log(text)
#         puts "[LOG] #{text}"
#     end
# end

# class Product
#     include Loggable
#     def title
#         log 'title is called'
#         p 'A great movie'
#     end
# end

# class User
#     include Loggable
#     def name
#         log 'name is called'
#         p 'alice'
#     end
# end

# product = Product.new 
# product.title

# user = User.new 
# user.name

module Loggable
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    extend Loggable

    def self.create_products(names)
        

        log "create_product is called"
    end
end

p Product.create_products([])

p Product.log('hello')