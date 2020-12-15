## Change folder locations after this lab
require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster == {}
            @roster[grade] = []
            @roster[grade] <<= name
            @roster
        else   
            @roster.clone.each do |key, value|
                 if key == grade  
                    value <<= name 
                    @roster[grade] = value
                else
                    @roster[grade] = []
                    @roster[grade] <<= name 
                    @roster
                end
            end
            @roster
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
        @roster
    end

end

school = School.new("Bayside High School") 
school.add_student("It's Ya Boi", 100)
school.roster