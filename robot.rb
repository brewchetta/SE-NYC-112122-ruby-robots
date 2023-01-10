require 'pry'

class Robot

    attr_reader :name
    # attr_writer :function, :weapons
    attr_accessor :function, :weapons

    @@robots = []

    def self.all_robots
        @@robots
    end

    # function weapons
    def initialize(function, weapons, name)
        @function = function
        @weapons = weapons
        @name = name

        @@robots << self
    end

    def beep_boop
        "#{self.name} says Beep boop"
    end

    def whoami
        self
    end

    def self.transform # class method
        "GATHER UP YOUR #{self.name}S AND ROLL OUT"
    end

    def transform_self
        puts self.class.transform
        puts "My name is #{self.name} and I approve this message"
    end

    def self.make_new_robot_named_bob
        self.new("Bob", "Bob", "Bob")
    end

end

r1 = Robot.new("mass destruction", "major lazer beam", "R1")

binding.pry