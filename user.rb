class User
    def hello
        #initialize以外はデフォルトでpublic
        "Hello, Ruby"       
    end
end

# publicはクラスの外部からでも自由に呼び出せるメソッド。
user = User.new
p user.hello
# ----------------privateメソッド---------------------------  
class User2 
    def hello
        "Hello, I am #{self.name}"
    end

    private
    #ここから下で定義されたメソッドはprivateメソッド
    # => クラスの内部でのみ使えるメソッド(レシーバがelfに限定されるメソッド)
    def name
        'Alice'
    end

end

# publicはクラスの外部からでも自由に呼び出せるメソッド。
# user = User2.new
# p user.hello

class User3
    def foo
        'foo'
    end

    def bar
        'bar'
    end

    # privateキーワードはメソッドなので、privateにしたいメソッドを引数に渡すことができる。
    # 以下のメソッドはprivateにはならない。
    private :foo, :bar

    def baz
        'baz'
    end
    # メソッドの戻り値はシンボルでメソッド名が返るので、そのまま引数としてprivateに渡すことができる。
    # private def baz
    #         'baz'
    # end

end

user3 = User3.new
# p user3.foo
# p user3.bar
p user3.baz

