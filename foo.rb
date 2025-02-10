class Foo
    def self.hello
        'hello'
    end
end

class Bar < Foo
    #クラスを継承するとクラスメソッド（ここではself.hello）も継承されるので、呼び出せる
end

p Foo.hello
p Bar.hello