##Create an Empty class named 'Person'
def Person
end



##Define three properties on that class 'name','age','birthdate'
def create
  @Person = Person.create(Person_params)
  @name = @Person.name.create(name_params)
  @age = @Person.age.create(age_params)
  @birthdate = @Person.birthdate.create(birthdate_params)
else
  render 'new'
end
end

##Define 'methods' that allow you to access and set all three of those properties, Do not use attribute accessor

def Person_params
  params.require(:Person).permit(:name, :age, :birthdate)
end



##Explain what calling Person.new does

Person.new creates a new Person with the data that they need to have with them.



##Create an initializer method that allows you do Person.new 'Amy Smith' , which initializes the  Person's name property

class Person
  def initialize
    @name = "Amy Smith"
  end
end



##Write a method that outputs the value of the self keyword to the console

def self
  print "self"
end


##Explain in as much detail as possible what self refers to and what it means in the grand scheme of things

(Self refers to the user at the time. It means that you will be able to tell who the person is at the time)



##Explain what object instantiation means:
=begin
It's when an object is created from a class.

=end



#What is the difference in scope between an instance variable vs a local variable?
#Which one is the instance variable and which one is the local variable?
class PersonC

  @name = "Amy"

  def print_name
    name = "Bob"
    puts name
  end

  def name
    puts @name
  end

end

=begin
Local variable is something that is defined like print_name & instance variable is something repeated throughout that instance such as def name.


=end



#Explain in detail what a method is

=begin
A method is set of expressions that returns a value like def print_name above.


=end


##What is the difference between a Class method and an instance method?
class PersonB
  @name = "Hey"

  def self.name
    @name
  end

  def say_name
    puts "name is #{@name}"
  end
end

=begin

Instance method uses a specific instance of a class & class method is called whenever a class name is used.

=end



#Is it possible to add methods to an object after it is created? In other words...is the following code correct?? Explain your answer
class PersonD

  @name = "Bob"

  def say_name

  end

end

person  = PersonD.new

def person.say_name_again
  puts @name
end

person.say_name_again

=begin
It is possible to add methods to an object, but I'm not sure it's done right above. I think it shoudl all be done within the same Def area.

=end




#What does the ? mark at the end of a method signify?

=begin
It means that it returns a true or false statement.


=end


#What does the ! sign at the end of a method signify?

=begin
It modifies the object it's called on.

=end



#What does the * symbol signify when passed as a method parameter?
#Where else is it used in the language and for what purpose?

def do_something *param
  puts param
end

=begin







=end










