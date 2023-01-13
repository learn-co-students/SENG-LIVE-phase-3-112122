class Donor < ActiveRecord::Base
  has_many :donations
  has_many :organizations, through: :donations


  # .donations => will return all donations assoiciated with the donor as an array 
  # we are looking at the donations table and finding all donations with a donor foreign key that matches our donor, gathering it into an array and returning 

  # donor = Donor.find(1)
  # donor.donations => return all donations associated with donor of id 1

  # .donations<< => if we want to add a new donation to our donors collection


  # .organizations 
end
