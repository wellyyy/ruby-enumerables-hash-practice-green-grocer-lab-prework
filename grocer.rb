require 'pry'
def consolidate_cart(cart)
  result = {}
  cart.each_with_index do |item, index|
    item.each do |food, info|
      if result[food]
        result[food][:count] += 1
      else
        
      end
  end
end

def apply_coupons(cart, coupons)

end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
