MENU_TEXTS = [
  [],
  ["", "İsim: ", "Yaş", "Seyahat Engeli[E|H]"]
]

def print_menu(level="0")
  clear_screen
  levels = level.split("_")
  case level[0]
  when "0"
    puts "============ ELEMESOFT ==============="
    puts "|       1. Aday Bilgi Girişi         |"
    puts "|       2. Aday İstatistikleri       |"
    puts "|       3. Eleme                     |"
    puts "|       4. Çıkış                     |"
    puts "======================================"
  when "1"
    puts "========== ADAY BİLGİ GİRİŞİ ========"
    puts "_____________________________________"
  end
end

def take_answer(message, answer_type="string")
    print message
    returning_value = gets.chomp
    case answer_type
    when "bool"
      if returning_value == 'E' || returning_value == 'H'
        return true
      else
        return false
      end
    when "int"
      return returning_value.to_i
    else
      return returning_value
    end
end

def answer_is_valid(answer, kindOf="between", options = {max: 4, min:1, menu_level: "0"})
  case kindOf
  when "between"
    answer = answer.to_i
    if (answer >= options[:min] && answer <= options[:max])
      return true
    else
      puts "Yanlış tuşladınız tekrar deneyiniz" 
      print_menu
      answer_is_valid(take_answer("Seçiminiz: "))
    end
  when "logical"
    if answer.to_s == 'true'
      return true
    else 
      print_menu(options[:menu_level])
      puts options[:error_message]
      answer_is_valid(take_answer("Seyahat Engeli[E|H]: ", "bool"), "logical")
    end
  else
    puts "Else"
  end
end

def clear_screen
    print "\e[2J\e[f"
end

candidates = []

while (true)
  print_menu
  cevap = take_answer("Seçiminiz: ", "int")

  if answer_is_valid(cevap)
    clear_screen

    case cevap
    when 1
      candidate = {}
      puts "Aday Bilgileri Girişi"
      puts "---------------------"
      
      candidate[:name] = take_answer("İsim: ")
      candidate[:age] = take_answer("Yaşınız: ", "int")
      
      travel_restriction = take_answer(
        "Seyahat Engeli[E|H]: ", 
        "bool"
      )
      while (
        answer_is_valid(travel_restriction, 
                        "logical", 
                        {error_message: "Yanlış tuşladınız. Lütfen E veya H tuşlayın.",
                         menu_level: "1_3"
                        })
        )
        travel_restriction = take_answer("Seyahat Engeli[E|H]: ", "bool") 
      end
     
      candidate[:travel_restriction] = travel_restriction


      
    #   print "Sabıka Kaydı[E|H]: "
    #   criminal_record = gets.chomp.upcase
    #   candidate[:criminal_record] = ((criminal_record == 'E') ? true : false)
    #   exit(0) if candidate[:criminal] = "E" then puts "Üzgünüz şirketimiz temiz insanlarla çalışır çıkış yapılıyor..."

    #   known_language_count = 0
    #   %w[Ruby Python C Java].each do |lang|
    #     print "#{lang} dilini biliyor mu?[E|H]"
    #     lang_answer = gets.chomp.upcase
    #     known_language_count += (lang_answer == 'E' ? 1 : 0)
    #     exit(0) if known_language_count == 0 then puts "Üzgünüz ama bu iş için en az bunların içinden birini bilmelsiniz çıkış yapılıyor..."
    #   end
    #   candidate[:known_language_count] = known_language_count

    #   print "Experince of years: "
    #   candidate[:experience] = gets.to_i
    #   exit(0) if candidate[:experience] > candidate[:age] then puts "Tutarsız cevap,çıkış yapılıyor bip,bop,bip"
    #   exit(0) if candidate[:experience] < 5 then puts "Üzgünüz şirketimiz daha tecrubeli insanlar arıyor,çıkış yapılıyor..."

    #   candidates << candidate
    # when 2 then puts "Aday İstatistikleri"

    #   candidate = {}

    #   print "Bir üniversteden mezun oldunuz mu ? (E/H)"
    #   candidate[:universty] = gets

    #   print "Hangi üniversteden mezun oldunuz"
    #   candidate[:wuniversty] = gets
    #   if candidate[:universty] == "H" then candidate[:wuniversty] == "Mezun olmadım!"
      
    #   print "Diploma notunuz ? (sayıyla belirtilecek) "
    #   candidate[:finalscore] = gets.to_i
    #   if candidate[:universty] == "H" then candidate[:finalscore] == "0"
       
    #   print "Önceki işiniz nedir ?"
    #   candidate[:previousjob] = gets.to_s

    #   print "Hobileriniz nedir ?"
    #   candidate[:hobbies] = gets.to_s

    #   print "En sevdiğiniz programlama dili nedir ?"
    #   candidate[:favlanguage] = gets.to_s

    #   print "Hangi Saatlerde çalışmak istersiniz (9.00-18.00) yoksa (18.00-03.00) "
    #   candidate[:timeprefrence] = gets.to_s

    #   print "Çalışmaya başlayınca aklınızdaki yaklaşık maaş tutarı nedir ? (sayıyla belirtilecek) "
    #   candidate[:money] = gets.to_i


       
      
      


    



    when 3 then puts "Eleme"
      pp candidates
    else 
      puts "Programı kullanıdığınız için teşekkürler."
      exit(0)
    end
  end
end

