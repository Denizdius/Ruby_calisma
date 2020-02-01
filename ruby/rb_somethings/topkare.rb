N = 100
toplam = 0
kareler_toplami = 0
toplam_karesi = 0

1.upto(N) do |sayi|
    toplam += sayi
    kareler_toplami += sayi ** 2
end

toplam_karesi = toplam ** 2
puts "Toplamların karesi - Karelerinin toplamı = #{toplam_karesi - kareler_toplami}"


# print "Hey 1 den ... ya kadar olan sayıların toplaminın karesini alabilirim  "
# sayi1 = gets.to_i

# sonuc = ((sayi1 "*" (sayi1"+"1)) / 2 ) "*" ((sayi1 "*" (sayi1"+"1)) / 2 )
# print "#{sonuc}"
# print "Hey şimdide 1 dden ... ye kadar olan sayıların karelerinin toplamını göstereyim "
# sayi2 = gets.to_i
# sonuc2 = (sayi2 "*" (sayi2 "+" 1) "*" (sayi2 "+"100)) "/" 6
# print "#{sonuc2}"
# print "iki sonucun farkı ne acaba ?"
#  sonuc3 ="#{sonuc}" "-" "#{sonuc2}"
#  print "#{sonuc3}"

#  #kafamdaki buydu ama olmayacağını biliyorumdum sayıları nasıl olarak yazcağımı kavrayamadım
# #Algoritması
# #Başla
# #sayi1 = veri al
# #sonuc ((sayi1 "*" (sayi1"+"1)) / 2 ) "*" ((sayi1 "*" (sayi1"+"1)) / 2 )
# #sonucu yaz,
# #sayi2 = veri al
# #(sayi2 "*" (sayi2 "+" 1) "*" (sayi2 "+"100)) "/" 6
# #sonuc2 yi yaz
# #iki sonucu çıkar sonuc-sonuc2 = sonuc3
# #sonuc3 yaz
# #bitir
