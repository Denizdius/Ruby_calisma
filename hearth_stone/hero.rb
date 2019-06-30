class Hero
    # Hero adında genel bir class oluşturulacak.
    # Bu sınıfta tüm herolar için ortak özellikler ve eylemler
    # toplanacak. Daha sonra game.rb içerinde heroes adında bir diziye
    # tüm karakterler eklenecek.

    HEROES = {
        "Varth" => {
            warrior_class: "Mage",
            health_point: 30,
            image: "varth.png",
            dialogs: {
                "hello" => {
                    text: "Hello, stranger!"
                    sound: "sound1.mp3"
                },
                "threat" => {
                    text: "My magic will apart you!!"
                    sound: "sound2.mp3"
                }
            }
        }
    }
    
    
    
    def initialize(character_name)
        
        hero_stats = []
        @class_based_characters = {
            mage: ["Varth", "Lookie", "Odin"],
            druid: ["Malfurion Stormrage", "Lunara"],
            hunter: ["Rexxar", "Alleria Windrunner"]
        }
        # @class = %w(Mage Druid Hunter Warlock Paladin Priest Rogue Shaman Warior)
        @class_based_characters.each_pair do |cls, characters|
            characters.each do |character|
                if character == character_name
                    @hero_stats = [cls, character_name]
                end
            end
        end

        if @hero_stats.empty?
            puts "There is no hero named #{character_name} in heaven."
        end
    end

    def show_info
        puts "#{@hero_stats[1]}: #{@hero_stats[0]}"
    end

end
