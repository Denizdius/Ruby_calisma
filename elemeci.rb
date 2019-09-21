def print_menu
    puts "============ ELEMESOFT ===============
|       1. Aday Bilgi Girişi         |
|       2. Aday İstatistikleri       |
|       3. Eleme                     |
|       4. Çıkış                     |
======================================"
    end



def take_answer
    print "Seçiminiz: "
    gets
end

def answer_is_valid(answer)
    if answer.to_i <= 4 
       return true
    else 
        # clear_screen 
        puts "Yanlış tuşladınız tekrar deneyiniz" 
        print_menu
        answer_is_valid(take_answer)
    end
end

# def clear_screen
#     system ("clear") || system ("cls")
# end

print_menu
cevap = take_answer
if answer_is_valid(cevap)
  puts "Başarılı"
end