class Shelter < ActiveRecord::Base
    has_many :pets
    has_many :adopters, through: :pets

    def current_pets
        
    end

end
