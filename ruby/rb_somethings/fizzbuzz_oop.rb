# MONKEY PATHCHING 

class Integer
    def fizz?(num = 3)
        self % num == 0
    end

    def buzz?(num = 5)
        self % num == 0
    end

    def fizzbuzz?(num1 = 3, num2 = 5)
        self % (num1 * num2) == 0
    end
end

class FizzBuzzer
    def initialize(low, high, fizz=3, buzz=5)
        @low_limit = low
        @high_limit = high
        @fizz_num = fizz
        @buzz_num = buzz
    end

    def print
        @low_limit.upto @high_limit do |num|
            if num.fizzbuzz?
                puts "FİZZBUZZ"
            elsif num.fizz?
                puts "FİZZ"
            elsif num.buzz?
                puts "BUZZ"
            else
                puts num
            end
        end
    end

end

FizzBuzzer.new(1,100).print