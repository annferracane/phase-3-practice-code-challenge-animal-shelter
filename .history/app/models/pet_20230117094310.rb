class Pet < ActiveRecord::Base
    has_many :shelters
    has_many :adopters

end
