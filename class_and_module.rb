module MyModule
  def say_hello
    puts 'Hello!'
  end

  def say_goodbye
    puts 'Goodbye!'
  end
end

module Animals
  class Cat
    def say_cat
      puts 'Cat!'
    end
  end
end

class User
  include MyModule
end

user = User.new
user.say_hello
user.say_goodbye

cat = Animals::Cat.new
cat.say_cat
