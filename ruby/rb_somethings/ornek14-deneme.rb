diller = ["HTML", "CSS", "JavaScript", "Ruby", "Ruby on Rails", "Sinatra"]

bilinen_dil_sayisi = 0

diller.each do |dil|
  print "#{dil.capitalize(:turkic)} dilinin biliyor musun?(E|H): "
  if gets.chomp.upcase == 'E'
    bilinen_dil_sayisi += 1 
  end
end













