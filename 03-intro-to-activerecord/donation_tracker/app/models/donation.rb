class Donation < ActiveRecord::Base

# # CRUD ; create, updated, read, delete records from the database 

# # CREATE A DONATION RECORD IN THE DB 

# # .new => instantiate a new instance, won't save to the database 
# # we need to follow it up with .save 

# # .create => gives both .new + .save all in one method 

# # READ 

# # .all => query the entire table and return all of the records as an array 

# # .find(id)
# Donation.find(1)

# # .find_by(attr: value)
# Donation.find_by(amount: 500)

# #.find_by_attr(value)
# Donation.find_by_amount(500)


# # .where => analogous to select, it could return more than 1 result 

# # UPDATE 

# # identify and retrieve the record I need to update 
# donation = Donation.find_by_amount(500)

# # use the .update method to change an attribute => this does persist the change to the db 
# donation.update(amount: 200)


# # DELETE

# # find the record first 
# donation = Donation.find(1)

# # .destroy which will delete teh record from the db, no you cant undo it
# donation.destroy 
end 

donations = Donation.where(date: "011223")

donations.each do |donation|
    donation.update(pending: true)
end