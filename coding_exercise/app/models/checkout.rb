class Checkout < ActiveRecord::Base

  attr_accessor :rule
  attr_accessor :running_total

  def purchase(options = {})

  end

  def scan(item)
    # Bogo
    if item[:name] == 'Fruit Tea'
      discount = item[:quantity].to_f / 2
      cost = discount.to_i * item[:price].to_f
      unless discount % 1 == 0
        cost = cost + item[:price].to_f
      end

    # Bulk
    elsif item[:name] == 'Apple'
      if item[:quantity].to_f >= 3
        cost = item[:quantity].to_f * 4.5
      else
        cost = item[:quantity].to_f * item[:price].to_f
      end

    # Everything else
    else
      cost = item[:quantity].to_f * item[:price].to_f
    end

    calculate_total(cost)
  end

  private

  def calculate_total(cost)
    if self.running_total.nil?
      self.running_total = cost
    else
      self.running_total = self.running_total + cost
    end
    self.running_total
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
