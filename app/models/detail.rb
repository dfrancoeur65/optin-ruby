class Detail < ApplicationRecord
  belongs_to :user

  ATTR_METHODS = [:birthday, :hair_color] 
end
