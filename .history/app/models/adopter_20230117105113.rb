class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        self.first_name + " " + self.last_name
    end

    def adopt(pet)
        if pet.class == Pet
            if !pet.adopted?
                pet.update(adopted?: true, adopter_id: self.id)
            else
            end
            
            
        else
            "#{pet.name} has already been adopted by #{pet.adopter.full_name}!"
        end
    end

    def fav_pet
        self.pets.size > 0 ? self.pets.group(:species).count.sort { |a,b| b[1] <=> a[1]}[0][0] : nil
    end
end
