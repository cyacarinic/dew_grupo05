class Usertype < ApplicationRecord
    has_many :users, :dependent => :destroy
end
