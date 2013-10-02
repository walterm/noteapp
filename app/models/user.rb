class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :notes
  
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
end
