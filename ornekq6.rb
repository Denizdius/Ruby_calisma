personel = []

5.times do 
  kisi = {}
  print "Adınız: "
  kisi["ad"] = gets.chomp.capitalize
  print "Soyadınız: "
  kisi["soyad"] = gets.chomp.capitalize
  print "Maaşınız: "
  kisi["maas"] = gets.to_f
  personel << kisi
end

maas_toplami = 0.0

personel.each do |kisi|
  maas_toplami += kisi["maas"]
end

puts "İşyerimizde #{personel.size} kişi çalışmaktadır. Toplam ödenen maaş #{maas_toplami} TL'dir. Söz konusu personel şunlardır: "
personel.each do |kisi|
  puts "- #{kisi["ad"]} #{kisi["soyad"]}"
end
