class Organization < ActiveRecord::Base
  has_many :donations 
  has_many :donors, through: :donations
  
  # .donations 

  # .donations<< 
end 