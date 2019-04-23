puts "sayı gir asal olup olmadığına karar vereceğim"
n = gets.to_i
asal = true
(2..n/2).to_a.each do |sayi|
    if n % sayi == 0
        asal=false
    end
end
if asal == true
    puts"sayı asal çıktı kardeşim helal"
else
    puts "kardeşim acık uğraşadın da kendin bakaydın asal olup olmadığına değil tabi şapşal"
end
