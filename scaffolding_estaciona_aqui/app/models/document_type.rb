class DocumentType < ApplicationRecord
    has_many :users, :dependent => :destroy
end
