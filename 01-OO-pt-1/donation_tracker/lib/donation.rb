require 'pry'

class Donation 

  # macro: class method that will generate instance methods 

  # attr_reader : which creates the reader method 
  # attr_writer : which creates the writer method 

  # attr_reader :amount, :date, :organization
  # attr_writer :amount, :date


  attr_accessor :date, :organization, :amount


  # attr_accessor : which gives us both reader and writer in one simple line of code

  # set rules upon instantation which gives each instance some values or even runs some behaviors 

  # is  method that will run after .new runs, and is invoked on the new instance 
  # instance method: method that will be called on the instance, a behavior that belongs to the data we created from the class
  def initialize(amount, date, organization, completed = false)

    # instance variable: are variables that start with a @, they are variables that get attached to the instance that they are defined for 
    self.amount = amount 
    @date = date 
    @organization = organization
    @completed = completed
    self
  end


  # getter/ reader method 

  # def amount 
  #   @amount
  # end

  # # setter method 

  # def amount=(amount)
  #   @amount = amount
  # end


  # instance method: which is a behavior that belongs to the instance
  def print 
  #  puts @amount
  #  puts @date 
  #  puts @organization
  binding.pry
  puts self.amount # this will invoke the reader 
  # what is self here?
  end

end




# Instance => byproduct of the class, which we create using the method .new
# is an object created off a class
donation = Donation.new(100, "01/09/23", "Wounded Warriors", true) # creating a new instance 
feeding_america = Donation.new(100, "01/10/23", "Feeding America") # creating a new instance 
# binding.pry
donation.print

# local variables vs instance variables 


# self: is a special keyword in Ruby, self can return ONLY 2 things: either the instance or the class
# scope matters: if we are calling self inside of an instance method: self == the instance 
# if we are calling self inside of a class method: self == the class