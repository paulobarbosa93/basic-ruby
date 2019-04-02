# local variables
user_fullname = 'Paulo Barbosa'
puts "Valor da variavel 'user_fullname' no escopo principal: #{user_fullname}"

def method_1
  user_fullname = 'João Miranda'
  puts "Valor da variavel 'user_fullname' no escopo method_1: #{user_fullname}"
end

def method_2
  user_fullname = 'Maria Joaquina'
  puts "Valor da variavel 'user_fullname' no escopo method_2: #{user_fullname}"
end

method_1
method_2

# class variables
COLOR = 'Red'

class User

  COLOR = 'Green'

  def initialize(name, age)
    @name = name
    @age = age
    @@last_user = "Name: #{@name} - Age: #{@age}"
  end

  def info
    puts "Name: #{@name} - Age: #{@age}"
  end

  def last_user_info
    puts @@last_user
  end
end

user1 = User.new('Paulo', 25)
user1.last_user_info

user2 = User.new('Sara', 24)
user2.last_user_info
user1.last_user_info

puts COLOR
puts User::COLOR
