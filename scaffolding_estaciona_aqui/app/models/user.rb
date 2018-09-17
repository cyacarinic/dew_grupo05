class User < ApplicationRecord
    belongs_to :usertype
    belongs_to :documenttype
    belongs_to :gender
    has_many :parkings, :dependent => :destroy
    has_many :rates, :dependent => :destroy
    has_many :parkinghistories, :dependent => :destroy
end
