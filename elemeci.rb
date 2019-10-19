require 'io/console'
MENU_FILL_LENGTH = 50


MENU_TEXTS = [
  [],
  ["", "İsim: ", "Yaş", "Seyahat Engeli[E|H]"]
]

def print_menu(level="0")
  clear_screen
  menu_y_length = 10
  y_space_count = (IO.console.winsize.first - menu_y_length ) / 2
  print "\n" * y_space_count
  levels = split_into_levels(level)
  

  puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
  puts_at_center(text: 'DENİZSOFT ELEMATİK')
  puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
  
  show_level_menu(level[0])
  puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
end

def split_into_levels(level)
  level.split("_")
end

def show_level_menu(level)
  menu_literals = [
    "DENİZ SOFT ELEMATİK",
    "ADAY BİLGİ GİRİŞİ EKRANI",
    "ADAY İSTATİSTİKLERİ",
    "ELEME",
    "ÇIKIŞ"
  ]

  case level
  when "0"
    max_length_of_text = menu_literals.map(&:size).max
    menu_literals.each_with_index do |elem, index|
      puts_at_center(text: "#{index+1}. #{elem}", const_of_space: max_length_of_text)
    end
  end
end


def puts_at_center(text: , const_of_space: 0, use_pipe: true)
  const_of_space = text.size if const_of_space.zero?
  # Paralel atama
  width_of_terminal = IO.console.winsize.last
  
  horizontal_space_count = (width_of_terminal - MENU_FILL_LENGTH) / 2
  
  printing_text  = ' ' * horizontal_space_count
  if use_pipe
      printing_text += '|'
      padding_size = 1
      printing_text += ' ' * (((const_of_space) /2) - padding_size)
      printing_text += text
      
      padding_size = (((MENU_FILL_LENGTH - const_of_space - text.size)).odd?) ? 1 : 2
      printing_text += ' ' * ((((MENU_FILL_LENGTH - const_of_space - text.size)) /2) - padding_size)
      printing_text += ' |'
  else
      printing_text += text
  end

  puts printing_text
end



def take_answer(message, answer_type="string")
    puts_at_center(text: message)
    puts_at_center(text: '-' * MENU_FILL_LENGTH, use_pipe: false)
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

