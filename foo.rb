class User
    def initialize(name)
        @name = name
    end

    attr_accessor :name

    # インスタンス@nameを、参照するメソッドを定義。
    #=> nameメソッドのように値を読み出すメソッドをゲッターメソッドという。
    # def name
    #     @name
    # end

    
    # インスタンスの@nameを、外部から変更するためのメソッド。
    # =で終わるメソッドを定義すると、変数に代入するような形式でメソッドを呼び出すことができる.
    # => name=メソッドのように、書き込むことができるメソッドをセッターメソッドという
    # def name=(value)
    #     @name = value
    # end
end

# ゲッターメソッド、セッターメソッドを総じてアクセサメソッドという。
#attr_accesorやattr_reader(読み取り専用)、attr_writer(書き込み専用)メソッドを使うことで、
# 明示的に書いたnameや@name=メソッドが不要になる。

user = User.new('Alice')
p user.name
#変数に代入しているように見えるが、実際はname=メソッドを呼び出している
user.name = 'アリス'
p user.name