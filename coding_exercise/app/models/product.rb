class Product < ActiveRecord::Base
  validates_presence_of :code, message: 'Must have a Product Code'
  validates_presence_of :name, message: 'Must have a Product Name'
  validates_presence_of :price, message: 'Must have a Product Price'
  validates_numericality_of :price, :greater_than => 0
end

# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  code       :string           default("")
#  name       :string           default("")
#  price      :decimal(10, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
