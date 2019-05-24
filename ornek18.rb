class Person
    def initialize(first_name, last_name, profession)
        @first_name = first_name
        @last_name = last_name
        @profession = profession
    end

    def full_name
        "#{@first_name} #{@last_name}"
    end

    def say_hi
        print "Hello, my name is #{full_name}. "
        puts introduce_yourself_with_profession
    end

    def introduce_yourself_with_profession
        case @profession
        when "Doctor" then "I am a doctor. I am good at cutting!!!"
        when "Lawyer" then "I am a lawyer. I am good at manipulating law!!!"
        when "Engineer" then "I am an engineer. I am good at fixing somethings up!!!"
        when "Programmer" then "I am a programmer. I am the king of the others!!!"
        else "I am nothing. Give some money to me please..."
        end
    end
end

persons = []
persons << Person.new("Deniz", "Karabacak", "Engineer")
persons << Person.new("Kartal", "Karabacak", "Doctor")
persons << Person.new("Abidin", "Kanatsız", "Receptionist")

persons.each do |person|
    person.say_hi
end