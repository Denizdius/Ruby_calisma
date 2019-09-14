def prime?(sayi)
    prime = true
    2.upto(Math.sqrt(sayi)) do |bolen|
        if sayi % bolen == 0
            prime = false
            break
        end
    end      
    
    prime
end

def primes(limit)
    primes_array = []
    2.upto(limit) do |sayi|
        if prime?(sayi)
            primes_array << sayi
        end
    end

    primes_array
end

def total_of_primes(numbers)
    numbers.inject(:+)
end


n = 2_000_000

pp "#{n}'e kadar olan asal sayıların toplamı = #{total_of_primes(primes(n))}"