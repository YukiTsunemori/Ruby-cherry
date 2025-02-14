# Mathモジュールで定義されているメソッドは全てモジュール関数になっているため、ミックスインでも特異メソッド
# でも使える。
class Calculator
    # Mathモジュールをinclude（ミックスイン）し、sqrtメソッドを使う
    include Math

    def calc_sqrt(n)
        Math.sqrt(n)
    end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)
p Math::E 
p Math::PI

