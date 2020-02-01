# Algoritma
# 1) Başla
# 2) toplam = 0 olsun
# 3) sayac = 1 olsun
# 4) sayac > 999 ise 9. adıma git
# 5) Eğer sayac mod 3 = 0 veya sayac mod 5 = 0 değil ise 7. adıma git.
# 6) toplam = toplam + sayac olsun
# 7) sayac = sayac + 1 olsun
# 8) 4. adıma git
# 9) toplamı ekrana yazdır
# 10) Bitir

# 2) toplam = 0 olsun
toplam = 0
# 3) sayac = 1 olsun
sayac = 1
# 4) sayac > 999 ise 9. adıma git
until sayac > 999
    # 5) Eğer sayac mod 3 = 0 veya sayac mod 5 = 0 değil ise 7. adıma git.
    if sayac % 3 == 0 || sayac % 5 == 0
        # 6) toplam = toplam + sayac olsun
        toplam += sayac
    end
    # 7) sayac = sayac + 1 olsun
    sayac += 1
# 8) 4. adıma git
end

# 9) toplamı ekrana yazdır
puts "İşemin sonucu = #{toplam}"


