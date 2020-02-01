print "Merhaba, adın ne:"
ad= gets.chomp
print "Memnun oldum #{ad}. Hangi yılda doğdun: "
dogum_yili=gets.to_i
puts "0000 çok yaşlıymışsın #{2019-dogum_yili} yaşında isen mezarda olmalıydın "
print "Peki bu akşam kaç saat uyudun" 
uyku_saati=gets.to_i   
if uyku_saati < 10
puts "Daha fazla uyumalsın yoksa ölürsün"
    
else
puts "Öfff kardeş öğlen oldu nerdeyse istersen hiç kalkmasaydın"
end