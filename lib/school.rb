# code here!
class School
    def initialize (name)
        @name=name
        @roster={}
    end
    def roster
        @roster
    end
    def add_student(name, grade)
        @roster[grade] ||=[]
        @roster[grade]<< name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        sorted = {}
        @roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end
end

school = School.new("Bayside High School")