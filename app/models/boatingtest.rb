class BoatingTest
    @@all = []

    def self.all
        @@all
    end

    def initialize(student:, name:, status:, instructor:)
        @student = student
        @name = name
        @status = status
        @instructor = instructor
        @@all << self
    end

    attr_accessor :student, :name, :status, :instructor
end
