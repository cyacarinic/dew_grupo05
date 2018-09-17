class Parking < ApplicationRecord
    belongs_to :user
    belongs_to :parkingtype
    has_many :additionalservices, :dependent => :destroy
    has_many :rates, :dependent => :destroy
    has_many :parkinghistories, :dependent => :destroy
end
