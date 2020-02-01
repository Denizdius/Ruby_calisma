print "Alt limit ne olsun: "
alt_limit = gets.to_i

print "Üst limit ne olsun: "
ust_limit = gets.to_i

unless alt_limit <= ust_limit
    puts "Girdiğin bilgiler hatalı"
end

alt_limit.upto(ust_limit) do |sayi|
    sart1 = sayi % 3 == 0
    sart2 = sayi % 5 == 0
    
    print "FIZZ" if sart1
    print "BUZZ" if sart2
    print sayi unless sart1 || sart2
    puts ""
end
