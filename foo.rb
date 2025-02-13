class Foo
    def self.hello
        'hello'
    end
end

class Bar < Foo
    #クラスを継承するとクラスメソッド（ここではself.hello）も継承されるので、呼び出せる
end

# p Foo.hello
# p Bar.hello

class Product
    private
    def name
        p 'this is private'
    end
end

class DVD < Product
    def to_s
        p "name: #{name}"
    end
end

# dvd = DVD.new
# dvd.to_s

