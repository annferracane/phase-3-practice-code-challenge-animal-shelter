class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        Pet.order(age: :desc).limit(1)
    end

    def self.average_age
        Pet.sum(:age) / Pet.count
    end

    def in_dog_years
        self.age * 5
    end

end
