class Product < ActiveRecord::Base
  validates_presence_of :code, message: 'Must have a Product Code'
  validates_presence_of :name, message: 'Must have a Product Name'
  validates_presence_of :price, message: 'Must have a Product Price'
  validates_numericality_of :price, :greater_than => 0
end
