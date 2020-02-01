# Kullanıcıdan n sayısısı al
print("n sayısını gir: ")
n = gets.to_i
# fact = 1 olsun
fact = 1
# 2'den n'e kadar döngü oluştur
2.upto(n) do |sayi|
    #  fact = fact * sayi olsun
    fact *= sayi
end

puts "#{n}! = #{fact}"
# fact sayısının rakamlarını bir diziye at, adı rakamlar olsun
    # fact değişkenini string yap
    rakamlar = fact.to_s
    rakamlar = rakamlar.chars

toplam = 0
# rakamlar dizisinin toplamını ekrana yazdır
rakamlar.each do |rakam|
    toplam += rakam.to_i
end

puts "#{n}!'in rakamları toplamı = #{toplam}"
