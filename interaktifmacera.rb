print "Macerana başlamadan önce krakter seçmelesin bu oyunuzumuzda iki tane karakterimiz var birincisi Walt ve ikincisi de Reul kim ile başlamak istersin ? "
karakter = gets.chomp
if karakter == "Walt"
  puts "Walt iyi seçim bu kel amcamız zekasını kulanarak düşmanlarını alt eder"

else
  puts "Malesef daha Raul u senaryoda kullanmayı billmiyorum otamatik seni walt ı seçmiş sayıyorum kapiş ?"  
end
print "Walt ile ıpsız bucaksız bir mağradasın karşına içinde 1 milyon dolar olan çanta gördün al/alma(Walt bunun tuzak olabilceğini düşünüyor ama seçim senin)"
para = gets.chomp

if para == "alma"
   puts "Eee bi zahmet almıyacağını kavramış olmana sevindim"
else
   puts "Iq testi yaptırmayı düşündün mü hiç 80 altında alacağına bahse girerim , oyuna yeniden başla" 
end 
print "Macerena artık tam anlamıyla başlayabiliriz önceki testi neyse mağramızda çubuk,yaprak,taş bulduk gelecek canavarlar için mızrak yapabilir yada bugün dinlemek için barınak inşa edebilirsin mızrak/barınak"
karar = gets.chomp

if karar == "mızrak"
    puts "Güzel mağradan olduğun için gelecek canavarlarıda tahmin etmen iyi oldu şimdi mızrağını al ve devam et"

    
else
    puts "Rahatlık seven sen , evet sen gece mışıl mışıl uyurken tüm canavarlar üstüne saldırdı tekrar dene"
    
end
print "Karşında vücudu dikenler kaplı bir canavar var sana doğru geliyor üzerine yürü/mızrak savur  "
hamle = gets.chomp

if hamle == "mızrak savur"
    puts "Mızrak savurarak onun dikenlerini kırdın şimdi gerçek savaş başlayabilir"
else
    puts "üzerine yürüdün ve dikenleri sana batarak öldün malesef"
end
print "Canavar çok sinirledi onun canını acıtın ve seni öldürmek için upuzun dişlerini gösterdi sana atlayacak naplmalısın mızrağını yukarı kaldır/zıpla"
haraket = gets.chomp
if haraket == "mızrağını yukarı kaldır"
    puts "İyi hamle canavar mızrakta saplanıp öldün şimdilik güvendesin"
    
else
    puts "Zıpladın ve canavar seni havada kaptı şuan mide sıvısında ölüyorsun tekrar dene"
end
print "Yorgunsun ve orda jelimsi yapıda bir koltuk gördün otur/oturma"
move = gets.chomp
if move == "oturma"
    puts "Oturma tabi jöle koltuk mu olur canavar salak olmadığını anladı ve ortaya çıktı"
else 
    puts "Ya niye niye oturdun , jölü koltuk mu olur canavar oturduktan birkaç saniye sonra seni içne çekti hava sızlıktan öldün"
end
print "Mağra çıkışını da görüyorsun ama önünde jölemsi canavar var ona mızrak fırlatın ve onu yedi silahsızsın yerde birşey varmı diye bakıyorsun su gördün al/ daha başka bir şey bak"
yer = gets.chomp
if yer == "daha başka bir şey bak" 
    puts "Riskli karardı, vaktin çok daraldı hadi hayırlısı"
    
else
    puts "Su aldın üzerine döktü eee birşey olmadı jöle canavar seni yedi havasızlıktan öldün"
end
print "Yere baktın ne gördün alev silahı evet evet bir alev silahı sıktın ve jöle canavar öldü ,mağradan da çıktı fena macera değildi hee"