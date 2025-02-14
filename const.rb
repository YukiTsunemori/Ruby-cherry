# class Product
#     # 定数は、defメソッドに使うことはできないため、トップレベルやclass定義直下で
#     # 宣言する必要がある。

#     DEFAULT_PRICE = 0
#     # 定数の定義（＝を使った代入）はそれ自身が値を返す。
# end

# p Product::DEFAULT_PRICE
# # クラス名::定数名で、定数の中身が参照できる

# class TrafficLight
#     # 定数COLORSを定義し、要素もまた定数として定義できる
#     COLORS = [
#         GREEN = 0,
#         YELLOW = 1,
#         RED =2
#     ]
# end

# p TrafficLight::YELLOW

# NUMBERS = [1,2,3].map {|n| n * 10}
# p NUMBERS

# class Product
#     DEFAULT_PRICE = 0
#     # 再代入して定数の値を書き換える
#     # DEFAULT_PRICE = 1000
# end

# 定数はすでに定義済みと警告は出るもののクラス内で再代入ができる
# また、警告は出るがクラスの外部でも再代入が可能。
# p Product::DEFAULT_PRICE
# p Product::DEFAULT_PRICE = 'hanatare'

# Product.freeze
# この構文で再代入ができないようロックをかける
# p Product::DEFAULT_PRICE = 90000

# class Product
#     SOME_NAMES = ['foo', 'bar', 'hoge'].freeze

#     def self.names_without_foo(names = SOME_NAMES)
#         # selfキーワードは、引数にクラスで定義した定数を呼び出す際に必要。
#         # => クラスメソッドでクラス自身を呼び出している？
#         # names.delete('foo')
#         p names
#     end
# end

# Product.names_without_foo
# p Product::SOME_NAMES






class Product
    SOME_NAMES = ['2025.FEB.14 is valentine`s day'].freeze

    def self.names(names = SOME_NAMES)
        # selfキーワードは、引数にクラスで定義した定数を呼び出す際に必要。
        # => クラスメソッドでクラス自身を呼び出している？
        # names.delete('foo')
        names
    end
end

p Product.names
# p Product::SOME_NAMES






# class Product
#     SOME_NAMES = ['foo', 'bar', 'baz']

#     def self.names(name=SOME_NAMES)
#         names
#     end
# end

# p Product.names


