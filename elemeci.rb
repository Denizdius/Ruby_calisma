def print_menu
    puts "============ ELEMESOFT ==============="
    puts "|       1. Aday Bilgi Girişi         |"
    puts "|       2. Aday İstatistikleri       |"
    puts "|       3. Eleme                     |"
    puts "|       4. Çıkış                     |"
    puts "======================================"
end

def take_answer
    print "Seçiminiz: "
    gets
end

def answer_is_valid(answer)
    if answer <= 4 
      clear_screen 
      return true
    else 
      clear_screen 
      puts "Yanlış tuşladınız tekrar deneyiniz" 
      print_menu
      answer_is_valid(take_answer)
    end
end

def clear_screen
    print "\e[2J\e[f"
end

candidates = []

while (true)
  print_menu
  cevap = take_answer.to_i

  if answer_is_valid(cevap)
    clear_screen

    case cevap
    when 1
      candidate = {}
      puts "Aday Bilgileri Girişi"
      puts "---------------------"
      
      print "İsim: "
      candidate[:name] = gets
      
      print "Yaş: "
      candidate[:age] = gets.to_i
      
      print "Seyahat Engeli[E|H]: "
      travel_restriction = gets.chomp.upcase
      candidate[:travel_restriction] = ((travel_restriction == 'E') ? true : false)
      
      print "Sabıka Kaydı[E|H]: "
      criminal_record = gets.chomp.upcase
      candidate[:criminal_record] = ((criminal_record == 'E') ? true : false)
      
      known_language_count = 0
      %w[Ruby Python C Java].each do |lang|
        print "#{lang} dilini biliyor mu?[E|H]"
        lang_answer = gets.chomp.upcase
        known_language_count += (lang_answer == 'E' ? 1 : 0)
      end
      candidate[:known_language_count] = known_language_count

      print "Experince of years: "
      candidate[:experience] = gets.to_i

      candidates << candidate
    when 2 then puts "Aday İstatistikleri"
    when 3 
      pp candidates
    else 
      puts "Programı kullanıdığınız için teşekkürler."
      exit(0)
    end
  end
end

