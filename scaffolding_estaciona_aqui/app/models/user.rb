class User < ApplicationRecord
    belongs_to :usertype
    has_many :rates, :dependent => :destroy
    has_many :parking_histories, :dependent => :destroy
end
