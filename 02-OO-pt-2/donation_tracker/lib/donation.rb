# Agenda:
# - Discuss class variables and class methods
# - Discuss inheritance

require 'pry'
require_relative './initialize_methods'
require_relative './organization.rb'

class Donation < InitializeMethods

  # class variable: @@variable_name
  
  # @@all = []

  attr_accessor :org, :amt, :date

  # def initialize(attr = {})
  #   attr.each do |key, value|
  #     self.send("#{key}=", value) # self.amt = 100
  #     # .send is a method we can invoke on an object, .send(method, arg)
  #   end

  #   @@all << self 
  # end

  # class method: this is a behavior that belongs to the class
  # class methods are reserved for behaviors that regard the entire class i.e query methods we want to run need to be a class method

  # Donation#print > in the test is saying that print should be an instance method 
  # .all > in the test that we need to write a class

  # def self.all
  #   # self # this will return the class
  #   @@all
  # end


  # def amt=(amt)
  #   @amt = amt
  # end

  def print 
    # self # return the instance
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end
end

donation = Donation.new(amt: 100, date: 121222, org: "Feeding America")
x = Donation.new(amt: 500, date: 121222, org: "Wounded Warriors")
y = Donation.new(amt: 700, date: 121222, org: "ASPCA")
z = Donation.new(amt: 700, date: 121222, org: Organization.new(name: "Feeding America"))


org = Organization.find_org("Feeding America")
Donation.new(amt: 700, date: 121222, org: org)

binding.pry
donation.print
# ww = Donation.new(amount: 300, date: 122522, organization: "Wounded Warriors")



# procedural ruby 

# donation_1 = {
#   amount: 100,
#   organization: "Feeding America",
#   date: 111222
# }
# donation_2 = {
#   amount: 100,
#   organization: "Feeding America",
#   date: 111222
# }
# donation_3 = {
#   amount: 100,
#   organization: "Feeding America",
#   date: 111222
# }