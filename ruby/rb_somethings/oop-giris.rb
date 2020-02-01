class Animal
  

  def initialize(kind="Unspecified" , first_name="Unnamed", last_name)
    @kind = kind
    @first_name = first_name
    @last_name = last_name
  end

  def say_hi
    puts "Hello, I am from #{@kind} kind. My name is #{full_name}!"
  end

  private

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

a =Animal.new("Mammals", "Batman", "Wayne")
# FIVE STARS
b = Animal.new("Star")

a.say_hi
b.say_hi
