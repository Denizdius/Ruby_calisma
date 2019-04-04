print "Basit işlemler yapacağız bir sayi gir istersen: " 
sayi1 = gets.to_i
if sayi1 > 1000
    puts "Bu ne böyle azcık küçük birşeyler söyleseydin neyse yapçaz birşeyler"
    
end
print "İkicil birtane söyle: "
sayi2 = gets.to_i
if sayi2 > 500
    puts " İyice abartın haa beni yorma ama neyse"
end
print "iki güzel sayımız var napmak istersin (lütfen çarpma)"
sonuc = 0
islem = gets.chomp
if islem == "*"
    sonuc = sayi1 * sayi2
elsif islem == "+"
    sonuc = sayi1 + sayi2 
elsif islem == "/"
    sonuc = sayi1.to_f / sayi2
elsif islem == "-"
    sonuc = (sayi1 - sayi2).abs
end   
puts "İşleminizn sonucu #{sonuc}"
dizi = [sayi1,sayi2]
while dizi < 3456783456789
    if islem == "*"
        sonuc = sayi1*sayi2