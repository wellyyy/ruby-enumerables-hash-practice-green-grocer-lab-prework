require 'pry'
def consolidate_cart(cart)
  cart.each_with_index do |item, i|
     item.each do |food, info|
       if result[food]
         result[food][:count] += 1
       else
         result[food] = info
         result[food][:count] = 1
       end
     end
   end
   result
end

def apply_coupons(cart, coupons)

end

def apply_clearance(cart)

end

def checkout(cart, coupons)
 
end
