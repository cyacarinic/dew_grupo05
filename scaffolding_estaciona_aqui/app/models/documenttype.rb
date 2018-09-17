class Documenttype < ApplicationRecord
    has_many :users, :dependent => :destroy
end
