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
      exit(0) if candidate[:criminal] = "E" then puts "Üzgünüz şirketimiz temiz insanlarla çalışır çıkış yapılıyor..."

      known_language_count = 0
      %w[Ruby Python C Java].each do |lang|
        print "#{lang} dilini biliyor mu?[E|H]"
        lang_answer = gets.chomp.upcase
        known_language_count += (lang_answer == 'E' ? 1 : 0)
        exit(0) if known_language_count == 0 then puts "Üzgünüz ama bu iş için en az bunların içinden birini bilmelsiniz çıkış yapılıyor..."
      end
      candidate[:known_language_count] = known_language_count

      print "Experince of years: "
      candidate[:experience] = gets.to_i
      exit(0) if candidate[:experience] > candidate[:age] then puts "Tutarsız cevap,çıkış yapılıyor bip,bop,bip"
      exit(0) if candidate[:experience] < 5 then puts "Üzgünüz şirketimiz daha tecrubeli insanlar arıyor,çıkış yapılıyor..."

      candidates << candidate
    when 2 then puts "Aday İstatistikleri"

      candidate = {}

      print "Bir üniversteden mezun oldunuz mu ? (E/H)"
      candidate[:universty] = gets

      print "Hangi üniversteden mezun oldunuz"
      candidate[:wuniversty] = gets
      if candidate[:universty] == "H" then candidate[:wuniversty] == "Mezun olmadım!"
      
      print "Diploma notunuz ? (sayıyla belirtilecek) "
      candidate[:finalscore] = gets.to_i
      if candidate[:universty] == "H" then candidate[:finalscore] == "0"
       
      print "Önceki işiniz nedir ?"
      candidate[:previousjob] = gets.to_s

      print "Hobileriniz nedir ?"
      candidate[:hobbies] = gets.to_s

      print "En sevdiğiniz programlama dili nedir ?"
      candidate[:favlanguage] = gets.to_s

      print "Hangi Saatlerde çalışmak istersiniz (9.00-18.00) yoksa (18.00-03.00) "
      candidate[:timeprefrence] = gets.to_s

      print "Çalışmaya başlayınca aklınızdaki yaklaşık maaş tutarı nedir ? (sayıyla belirtilecek) "
      candidate[:money] = gets.to_i


       
      
      


    



    when 3 then puts "Eleme"
      pp candidates
    else 
      puts "Programı kullanıdığınız için teşekkürler."
      exit(0)
    end
  end
end

