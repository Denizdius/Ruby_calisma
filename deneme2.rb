puts "Yeni bir şey yapacağız önce sen birkaç sayı gireceksen sonra o sayılarlara bir döngü üreteceğeiz"
sayıbir = gets.to_i
sayıiki = gets.to_i
sayıüç = gets.to_i
sayıdört = gets.to_i
sayıbeş = gets.to_i
x = [sayibir,sayiiki,sayiüç,sayidört,sayibeş]
puts "İşlem seç lo (+,/,*,-)"
sonuc = 0
islem = gets.chomp
while x >= 1 
    if islem == "*"
        sonuc = x * sayibir
    elsif islem == "*"
        sonuc = x * sayibir
    elsif islem == "/"
        sonuc = x.to_f / sayibir    
    elsif islem == "-"
        sonuc = (x-sayibir).abs
    elsif islem == "+"
        sonuc = x + sayibir
    end

                
            
    
            

        

