print "Faktoriyeli alınacak sayı: "
n = gets.to_i
asal = true
sayi = 2

while sayi < Math.sqrt(n).floor
  asal = false if n % sayi == 0
  sayi += 1
  break unless asal
end

if asal then puts "Asal" else puts "Asal değil" end
