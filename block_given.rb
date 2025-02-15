# def greet
#     puts "おはよう"
#     if block_given?
#     yield
#     end
#     puts "こんばんわ"
# end

# greet 

# greet do
#     puts 'こんにちは'
# end

# def greet
#     puts "おはよう"
#     # ブロックに引数を渡し、戻り値を受け取る
#     text = yield 'こんにちは', 12345
#     #ブロックの戻り値をターミナルに出力する
#     puts text
#     puts 'こんばんわ'
# end

# greet do |text, integer|
#     # yieldで渡された文字列（こんにちは）を2回繰り返す
#     text * 2
# end

#↓↓↓↓↓↓↓↓↓ ブロック全体をメソッドの引数として受け取ることも可能↓↓↓↓↓↓↓
# ブロック全体を引数として受け取る
# def greet(&block)
#     puts "Good Morning"
#     #callメソッドを使ってブロックを実行する
#     text = block.call('Good Afternoon ')
#     puts text
#     puts "Good Evening"
# end

# greet do |text|
#     text * 2
# end

# 日本語版のgreetメソッド
def greet_ja(&block)
    texts = ['おはよう', 'こんにちは', 'こんばんわ']
    #ブロックを別のメソッドに引き渡す
    # =>この際、他のメソッドにブロックを渡しているので、&をつけないとArgumentErrorが返る
    greet_common(texts, &block)
end

# 英語版のgreetメソッド
def greet_en(&block)
    texts = ['good morning', "hello", "good evening"]
    #ブロックを別のメソッドに引き渡す
    # =>この際、他のメソッドにブロックを渡しているので、&をつけないとArgumentErrorが返る
    greet_common(texts, &block)
end

#出力処理用の共通メソッド
def greet_common(texts, &block)
    puts texts[0]
    #ブロックを実行する
    # この場合、配列２つ目のオブジェクトに対してブロックを実行している
    puts texts[1]
    puts block.call(texts[2])
end

#日本語版のgreetメソッドを呼び出す
# greet_ja do |text|
#     text * 2
# end

#英語版のgreetメソッドを呼び出す
# greet_en do |text|
#     text.upcase!
# end

 def greet(&block)
    puts 'おはよう'
    text = if block.arity == 1
            #ブロックパラメータが１個の場合
                yield 'foo'
            elsif block.arity == 2
            #ブロックパラメータが2個の場合
                yield 'bar', 'baz'
            end
        puts text
        puts "hoge"
end

#ブロックパラメータ1個でメソッドを呼び出す
# greet do |text|
#     text * 1
# end

#ブロックパラメータ2個でメソッドを呼び出す
greet do |text_1, text_2|
    text_1 * 2 + text_2 * 2
end
