# 1) Başla
# 2) sayi1 = 1
# 3) sayi2 = 1
# 4) temp = -1
# 5) sayi2 + sayi1 > 4_000_000 ise 11. adıma git
# 6) temp = sayi1
# 7) sayi1 = sayi2
# 8) sayi2 += temp
# 9) sayi2/2 sonucunda 2 ye bölünürse yazdır bölünmezse yazdırma
# 10) 5. adıma git
# 11) Bitir

sayi1 = 1
sayi2 = 1
temp = 1

until sayi2 + sayi1 > 4_000_000 
    temp = sayi1
    sayi1 = sayi2
    sayi2 += temp
    if  "#{sayi2}/2" == true
         print "#{sayi2}, " 
    end
         
^#yazmıyor
