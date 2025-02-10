class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "Name: #{name}, Price: #{price}"
    end
end

# product = Product.new('A great movie', 1000)
# p product.name
# p product.price

class DVD < Product
    # nameとpriceは親クラスでattr_readerが設定されているので定義不要
    attr_reader :running_time

    def initialize(name, price, running_time)
        # 親クラスにも存在している属性
        # => 繰り返し書くことになるのでここではsuperを使って親クラスのメソッドを呼び出します
        # @name = name
        # @price = price
        super(name, price)
        @running_time = running_time
    end

    def to_s
        # superで親クラスのto_sメソッドを呼び出す
        "#{super}, Running_time: #{running_time}"
    end


end

product = Product.new('A awesome movie', 1000)
p product.to_s
dvd = DVD.new('A great Movie', 1000, 120)
p dvd.to_s