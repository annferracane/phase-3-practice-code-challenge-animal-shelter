class Shelter < ActiveRecord::Base
    has_many :pets
    has_many has_many :objects, through: :join_association, source: :join_association_table_foreign_key_to_objects_table

end
