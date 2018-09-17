class Parking < ApplicationRecord
    belongs_to :user
    has_many :additionalservices, :dependent => :destroy
    has_many :rates, :dependent => :destroy
    has_many :parkinghistories, :dependent => :destroy
end
