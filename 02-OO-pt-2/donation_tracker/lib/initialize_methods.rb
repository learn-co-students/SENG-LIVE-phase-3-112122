class InitializeMethods 
  @@all = []
  
  def initialize(attr = {})
    attr.each do |key, value|
      self.send("#{key}=", value) # self.amt = 100
      # .send is a method we can invoke on an object, .send(method, arg)
    end

    @@all << self 
  end

  def self.all
    # self # this will return the class
    @@all
  end
end