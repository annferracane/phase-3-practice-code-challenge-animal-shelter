class Shelter < ActiveRecord::Base
    has_many :pets
    has_many has_many :objects, through: 

end
