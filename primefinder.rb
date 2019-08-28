# require 'prime'
# print Prime.first(10_001).to_a.last
# #istediğime ulaştım sonucusunu almak için yazılcsk şeyi unutum

primes_counter = 0
number = 1

while (true)
    number += 1
    prime = true
    2.upto(Math.sqrt(number)) do |div|
        if (number % div == 0)
            prime = false
            break
        end
    end

    if prime
        primes_counter += 1
    end

    if primes_counter == 10_001
        puts "10_001. asal sayı #{number}"
        break
    end
end