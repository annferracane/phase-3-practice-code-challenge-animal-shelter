class Pet < ActiveRecord::Base
    belongs_to :shelters
    has_many :adopters

end
