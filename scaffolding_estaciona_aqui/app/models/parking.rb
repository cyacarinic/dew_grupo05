class Parking < ApplicationRecord
    has_many :additional_services, :dependent => :destroy
    has_many :rates, :dependent => :destroy
    has_many :parking_histories, :dependent => :destroy
end
