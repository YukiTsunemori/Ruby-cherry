# puts 'Start'

# # 例外処理を組み込んで例外に対処する
# begin
#     puts 1 + '10'
# rescue
#     puts '例外が発生したが、このまま続行する'
# end

# # 例外処理を組み込んだので、最後まで実行可能
# puts 'End'

# def method_1
#     puts 'method_1 start.'
#     begin
#         method_2
#     rescue 
#         puts "例外が発生しました"
#     end
#     puts 'method_1 end.'
# end

# def method_2
#     puts 'method_2 start.'
#     method_3
#     puts 'method_2 end.'
# end

# def method_3
#     puts 'method_3 start.'
#     begin
#     1 / 0
#     rescue => e 
#         puts "エラークラス: #{e.class}"
#         puts "エラーメッセージ: #{e.message}"
#         puts "バックトレース始め-------"
#         puts e.backtrace
#         puts "バックトレース終わり-----"
#     end
#     puts 'method_3 end.'
# end

# method_1
            
# begin
#     puts 123 + '1'
# rescue TypeError, ZeroDivisionError => e
#     puts '０で除算したか、データ型のエラーです'
#     puts "エラー：#{e.class} #{e.message}"
# end

# retry_count = 0
# begin
#     puts "処理を開始します"
#     1 / 1
# rescue
#     retry_count += 1
#     if retry_count <= 3
#         puts "retryします。(#{retry_count}回目)"
#         retry 
#         # retry文はbegin節の最初からやり直すことができる
#     else
#         puts "retryに失敗しました"
#     end
# end

# def currency_of(country)
#     case country
#     when :japan
#         p 'yen'
#     when :us 
#         p 'dollar'
#     when :india
#         p 'rupee'
#     else
#         #意図的に例外を発生させる
#         raise ArgumentError, "無効な国名です。#{country}"
#     # puts "そのような通貨は存在しません"    
#     end
# end

# currency_of(:japan)
# currency_of(:korea)

# require 'date'

# def to_date(string)
#     begin
#         # 文字列のパースを試みる
#         # パースとは.....
#         # =>プログラムのソースコードやXML文書など、一定の文法に従って記述された複雑な構造のテキスト文書を解析し、
#         # プログラムで扱えるようなデータ構造の集合体に変換すること
#         Date.parse(string)
#     rescue ArgumentError
#         # パースできない場合はnilを返す
#         # retry
#     end
# end

# p to_date('2025-augs-15')
# p to_date('tsunemori')

def to_date(string)
    Date.parse(string) rescue nil
end
p to_date('2025-augs-15')
p to_date('tsunemori')

# rescue節を修飾子として使うこともできるが、例外発生のエラークラスを指定できない。
# StandardErrorとそのサブクラスが捕捉される。
# 細かくクラスを指定したい場合は、begin endをつけたほうがいい。

class NoCountryError < StandardError 
end

def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'dollar'
    when :india
        'rupee'
    else    
        raise NoCountryError, "無効な国名です。#{country}"
    end
end

p currency_of(:italy)
