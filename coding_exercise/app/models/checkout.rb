class Checkout < ActiveRecord::Base

  attr_accessor :rule
  attr_accessor :running_total

  def scan(item)
    if self.rule == 'bogo'
      discount = item[:quantity].to_f / 2
      cost = discount.to_i * item[:price].to_f
      unless discount % 1 == 0
        cost = cost + item[:price].to_f
      end
      if se
      self.running_total = cost
      debugger
    end
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
