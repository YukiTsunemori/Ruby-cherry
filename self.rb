# クラス構文やモジュール構文に囲まれていない一番外側の部分のことをトップレベルという
p self 
# => main(mainという名前のObjectクラスのインスタンスがself)
p self.class
# => Object

class User
    # クラス内部
    p self
    # => Userクラス自身のインスタンス
    p self.class
    # => UserクラスのクラスはClass
end