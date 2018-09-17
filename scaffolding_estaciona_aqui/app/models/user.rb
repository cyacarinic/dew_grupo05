class User < ApplicationRecord
    belongs_to :UserType
    belongs_to :DocumentType
    has_many :rates, :dependent => :destroy
    has_many :parking_histories, :dependent => :destroy
end
