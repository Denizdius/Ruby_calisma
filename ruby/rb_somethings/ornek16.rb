# * splash operator
def topla_ve_yazdir(*sayilar)
  toplam = 0
  sayilar.each do |sayi|
    toplam = toplam + sayi
  end
  puts toplam
end

def carp_ve_yazdir(*sayilar)
  carpim = 1
  sayilar.each do |sayi|
    carpim = carpim * sayi
  end
  puts carpim
end

topla_ve_yazdir(3, 5, 4, 6, 4, 5, 89, 3, 4, 56)
carp_ve_yazdir(3, 5, 4, 6, 4, 5, 89, 3, 4, 56)
# Kullanıcıdan n tane sayı alalım
# Yapılacak işlemi sor (+ | *)
# İlgili metodu çağır

