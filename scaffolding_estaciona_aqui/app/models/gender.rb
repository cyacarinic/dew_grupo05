class Gender < ApplicationRecord
    has_many :users, :dependent => :destroy
end
