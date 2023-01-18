class DonationsController < ApplicationController

  # CRUD api 


  # READ 

  # I want an endpoint that is going to retreive and return a list/collection of all donations

  get '/donations' do 
    # How would I retreive all donations, what method would I use to get this data back from the DB 
    donations = Donation.all

    # we need to send this as a response that works with the client env we're using
    donations.to_json # this is going to convert Ruby to JSON 
  end


  # Read a single donation 

  # How do I define the donation instance I want?
  get '/donations/:id' do # dynamic route
    # how do I get the ID from the URL used in the request 
    # params[:id]
    # What AR method could I use to retreive that data 
    donation = Donation.find(params[:id])

    donation.to_json
  end 


# CREATE 

post '/donations' do 
  # I need to create a new donations object with the data in params 
  # send that as a response 

  # donation = Donation.create(amount: params[:amount], date: params[:date])
  donation = Donation.create(params)
  # donation.organization_id = Organization.last.id
  donation.to_json
end 

# UPDATE 

patch '/donations/:id' do 
  # params = {"amount"=>300, "id"=>"22"}
  donation = Donation.find(params[:id])
  donation.update(amount: params[:amount])
  donation.to_json
end 

# DELETE 

delete '/donations/:id' do 
  donation = Donation.find(params[:id])
  donation.destroy 
end 

end


# fetch method 

# fetch('http://localhost:9292/donations')
# .then()
# .then(do somehing with the data here)

# fetch('http://localhost:9292/donations', {
#   method: 'POST',
#   body: {
#     ...
#   }
# })
# .then()
# .then(do somehing with the data here)