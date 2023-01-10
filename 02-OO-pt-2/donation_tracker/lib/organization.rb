
require_relative './initialize_methods'
require 'pry'


class Organization < InitializeMethods

  attr_accessor :name

  def self.find_org(name)
    self.all.find {|org| org.name == name}
  end

end

Organization.new(name: "Feeding America")
binding.pry