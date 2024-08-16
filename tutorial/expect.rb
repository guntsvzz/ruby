# puts "####Try-Error####"
# begin 
#     a = a / 0
# rescue ZeroDivisionError => e
#     puts e.message
# end

puts "####Function####"
def sayHello(message)
    puts "Hello #{message}"
end

sayHello("Gun")

def square(number)
    s = number * number
    return s
end

puts square(5)

puts "#####Class####"
class Basic
    def sayHello
        puts "Hello"
    end
end

basicObj = Basic.new
basicObj.sayHello


class Player
    @name
    attr_accessor :age

    def initialize(name, age)
        @name = name
        @age = age
    end
    public 
    def getInfo
        puts "Name: #{@name}, Age: #{@age}"
    end

    def sayHI
        puts "Hi #{@name}" 
    end

    private
    def sayBye
        puts "Bye #{@name}"
    end
end

roonaldo = Player.new("Roonaldo", 39)
messi = Player.new("Messi", 37)

roonaldo.getInfo
messi.getInfo

roonaldo.sayHI
messi.sayHI

roonaldo.sayBye