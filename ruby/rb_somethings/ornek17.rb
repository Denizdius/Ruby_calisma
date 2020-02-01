def sayilari_gir
  sayilar = []
  while true
    print "Sayıyı gir: "
    cevap = gets.chomp
    break if cevap.upcase == 'Q'
    sayilar << cevap.to_i
  end
  sayilar
end
def islem_yap(islem_turu, sayilar)
  islem_turu == '+' ? sonuc = 0 : sonuc = 1
  puts sayilar.inject(sonuc, islem_turu.to_sym)
end
print "İşlemi gir: "
islem_yap(gets.chomp, sayilari_gir)
