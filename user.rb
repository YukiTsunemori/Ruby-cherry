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
user = User2.new
p user.hello