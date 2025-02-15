# module AwesomeApi
#     # 設定値を保持するクラスインスタンス変数を用意する
#     @base_url = ''
#     @debug_mode = false

#     # クラスインスタンス変数を読み書きするための特異メソッドを定義する
#     class << self

#         # 読み書きするために、わざわざメソッドを定義したが、本来は
#         # attr_accessor :base_url :debug_modeの一行だけで済む
#         def base_url=(value)
#             @base_url = value
#         end

#         def base_url
#             @base_url
#         end

#         def debug_mode=(value)
#             @debug_mode = value
#         end

#         def debug_mode
#             @debug_mode
#         end
#     end
# end

# AwesomeApi.base_url = 'https://exaple.com'
# AwesomeApi.debug_mode = true

# p AwesomeApi.base_url
# p AwesomeApi.debug_mode

# module Greetable
#     def hello
#         'hello'
#     end
# end

# module Aisatsu
#     include Greetable
#     def konnnitiha
#         'こんにちは'
#     end
# end

# class User
#     include Aisatsu
# end

# user = User.new 
# p user.hello
# p user.konnnitiha

# p User.ancestors

module A
    def to_s
        "<A> #{super}"
    end
end

class Product
include A 
    def to_s
        "<Product> #{super}"
    end
end

product = Product.new 
p product.to_s