class Book < ActiveRecord::Base
  attr_accessible :author, :avalability, :edition, :name, :price
end
