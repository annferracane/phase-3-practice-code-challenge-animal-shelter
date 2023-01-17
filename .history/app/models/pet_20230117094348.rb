class Pet < ActiveRecord::Base
    belongs_to :shelters, :adopters

end
