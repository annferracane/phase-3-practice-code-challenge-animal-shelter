class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        self.first_name + " " + self.last_name
    end

    def adopt(pet)
        if !pet.adopted?
            
        end
    end

end
