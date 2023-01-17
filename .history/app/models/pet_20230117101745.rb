class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        Pet.order(age: :desc).limit(1)
    end

    def average_age
        Pet.sum(:age) / Pet.sum(:age)

    end

end
