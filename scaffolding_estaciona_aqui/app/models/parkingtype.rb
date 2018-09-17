class Parkingtype < ApplicationRecord
    has_many :parkings, :dependent => :destroy
end
