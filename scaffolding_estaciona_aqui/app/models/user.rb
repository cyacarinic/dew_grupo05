class User < ApplicationRecord
    belongs_to :usertype
    belongs_to :documenttype
    has_many :rates, :dependent => :destroy
    has_many :parkinghistories, :dependent => :destroy
end
