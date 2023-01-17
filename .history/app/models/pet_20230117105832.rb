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
        self.species == "canine" ? self.age * 5 : "This is a #{self.species}. Not a canine! We cannot calculate age in "
    end

end
