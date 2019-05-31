class Person
    def initialize(first_name, tall, profession,weight)
        @first_name = first_name
        @tall = tall
        @profession = profession
        @weight = weight

    end

    def say_hi
        print "Hello, my name is #{first_name}. "
        puts introduce_yourself_with_profession_tall_weight
    end

    def introduce_yourself_with_profession
        case @profession
        when "Doktor" then "Ben bir doktorum keser biçerim "
        when "Avukat" then "İnsanları kanunları kullanarak kandırırım ve bundan çok para kazanırım"
        when "Mühendis" then "Ben mühendis bizde çok  para yok ama birşeyleri tamir edebilirim"
        when "Programcı" then "Diğerlerinn mesleğinin sonu yakın ama benimki çağın mesleği,ağlayabilirler"
        else "Bana para verrrr,bana para veeeeeeerrrr"
        end
    end
    def introduce_yourself_with_height
        case @tall
        when "1.40" then "Beni göremezsin "
        when "1.50" then "Yataktan paraşütle atlıyorum"
        when "1.60" then "İnş uzarım"
        when "1.70" then "Normal bir boy"
        when "1.80" then "Uzunluk sultanlıktır"
        when "1.90" then "1.80 lerin hükmü 1.90 lar gelene kadardır"    
        end
    end
    def introduce_yourself_with_weight
        case @weight
        when "40kg" then "HIII.HIII yemek lütfen "
        when "50kg" then "Siz çok şişmansıznız ben normalim"
        when "60kg" then "Normal bir kilo"
        when "70kg" then "Benim boyum kilomla orantlı"
        when "80kg" then "Azcık var  kilo"   
        else "Ben obezim"
        end    
    
end

persons = []
persons << Person.new("Deniz", "1.70", "Mühendis","60kg")
persons << Person.new("Kartal", "1.50", "Avukat","70kg")
persons << Person.new("Abidin", "1.60", "İşçi","80kg")

persons.each do |person|
    person.say_hi
end
