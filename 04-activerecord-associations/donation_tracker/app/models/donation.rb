class Donation < ActiveRecord::Base

  belongs_to :donor
  belongs_to :organization

  # .donor => reader method, it will return the donor that the donation belongs to 
  # donation = Donation.find(1)
  # donation.donor

  # .donor=(donor)


  # .organization 

  # .organization=(organization)

end 

