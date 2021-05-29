class Book < ApplicationRecord
  
  belongs_to :user
  attachment :new
end
