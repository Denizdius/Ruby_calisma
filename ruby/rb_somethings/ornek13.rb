sayilar = [5,1,6,2,4,3,9,3,7]

min = sayilar[0]
max = sayilar[0]
1.upto(sayilar.length - 1) do |sayi|
  if sayilar[sayi] < min
    min = sayilar[sayi]
  end
  if sayilar[sayi] > max
    max = sayilar[sayi]
  end
end

puts "en küçük: #{min}"
puts "en büyük: #{max}"
