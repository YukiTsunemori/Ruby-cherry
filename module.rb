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

# module Loggable

# end

# class Product
#     include Loggable
# end

# p Product.create_products([])
# product = Product.new
# p product.is_a?(Loggable)
# p product.is_a?(Product)
# p product.is_a?(BasicObject)
# p product.class.superclass.superclass
# p Product.log('hello')

# module NameChange
#     def change_name
        #include先のクラスのインスタンス変数を変更する
#         @name = 'Moduleのインスタンス'
#     end
# end

# class User
#     include NameChange
#     attr_reader :name

#     def initialize(name)
#         @name = name
#     end
# end

# Userクラスのインスタンスを生成
# user = User.new('アリス')
# p user.name

# モジュールで定義したメソッドでインスタンス変数を書き換える
# =>モジュール内のchange_nameメソッドが呼ばれ内部の処理が実行される
# user.change_name
# p user.name

# module NameChangeable
#     def change_name
        # セッターメソッド経由でデータを変更する
        # （ミックスイン先のクラスすでセッターメソッドが未定義であれば、エラーが発生して
        # 実装上の問題に気づける）
#         self.name = 'アリス'
#     end
# end

# class User
#     include NameChangeable
#     attr_accessor :name
    
#     def initialize(name)
#         @name = name
#     end
# end

# user = User.new('alice')
# user.change_name
# p user.name

# module Baseball
#     class Second
#         def initialize(player, uniform_number)
#             @player = player
#             @uniform_number = uniform_number
#         end

#         def name
#             p "Player: #{@player}, Number: #{@uniform_number}"
#         end
#     end
# end

# module Clock
#     class Second
#         def initialize(digits)
#             @digits = digits
#         end

#         def time
#             if @digits > 0 && @digits < 12
#                 p "It is #{@digits} in the morning"
#             else
#                 p "It is #{@digits} in the afternoon"
#             end
#         end
#     end
# end

# player = Baseball::Second.new('Tsunemori', 1)
# clock = Clock::Second.new(1)

# player.name()
# clock.time()

# class Second
#     def initialize(player, uniform_number)
#         @player = player
#         @uniform_number = uniform_number
#     end
# end

# module Clock
#     class Second
#         def initiazlie(digits)
#             @digits = digits
#             #クラス名の前に::を付けるとトップレベルのクラスを指定したことになる
#             @baseball_second = ::Second.new('Alice', 10)
#         end
#     end
# end

# second = Clock::Second.new()
# p second

module Baseball
    class Second
        def file_with_nesting
            #入れ子ありのクラス定義でfileクラスを参照する
            p ::File
        end
    end
end

class Baseball::Second
    def file_without_nesting
        #入れ子なしのクラス定義でfileクラスを参照する
        p Baseball::File
    end
end

# second = Baseball::Second.new 
# p second.file_with_nesting
# # => Baseball::File
# p second.file_without_nesting
# => File

# module Loggable
#     def self.log(text)
#         puts "[LOG] #{text}"
#     end
# end

# Loggable.log('これはmoduleの記録です.
# インスタンスの生成なしで呼ぶことができます')
#newする必要がないので、単なるメソッド（関数）の集まりを作りたいケースに向いている。

# module Loggable
#     class << self
#         def log(text)
#             puts "[LOG] #{text}"
#         end
#     end
# end

# Loggable.log('Hello, Ruby')

module Loggable
    def log(text)
        puts "[LOG] #{text}"
    end
    # logメソッドをミックスインとしても、モジュールの特異メソッド（クラスメソッド）としても使えるようにする
    #module_functionメソッドは対象のメソッドの下で呼び出す！
    module_function :log 
    # ちなみに、module_functionを引数なしで定義した場合、その下で呼び出されるメソッドは全て
    # モジュール関数になる！！
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('This is Classメソッド')

# Loggableモジュールをincludeしたクラスのメソッドを呼び出す
class Product
    include Loggable

    def title
        # includeしたLoggableのlogメソッドを呼び出す
        log 'title is called'
        p 'A great movie'
    end
end

product = Product.new
product.title
# product.log
# =>他のクラスにミックスインすると自動的にprivateメソッドになるため、呼び出せない