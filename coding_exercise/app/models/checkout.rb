class Checkout < ActiveRecord::Base

  def scan(product)
    puts 'moo'
    puts 'moo'
  end

  def total
  end

end

# == Schema Information
#
# Table name: checkouts
#
#  id         :integer          not null, primary key
#  total      :decimal(10, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
