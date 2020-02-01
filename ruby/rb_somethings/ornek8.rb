puts "Yeni bir şey yapacağız önce sen birkaç sayı gireceksen sonra o sayılarlara bir döngü üreteceğeiz"
sayibir = gets.to_i
sayiiki = gets.to_i
sayiüç = gets.to_i
sayidört = gets.to_i
sayibeş = gets.to_i
x = [sayibir,sayiiki,sayiüç,sayidört,sayibeş]
print "İşlem seç lo (+,*): "
islem = gets.chomp

if islem == "*"
    sonuc = 1
else
    sonuc = 0
end

while x.size > 0 && (islem == "*" || islem == "+")
    if islem == "*"
        sonuc = sonuc * x.pop
    elsif islem == "+"
        sonuc = sonuc + x.pop
    end
end

puts "İşlemin sonucu: #{sonuc}"
