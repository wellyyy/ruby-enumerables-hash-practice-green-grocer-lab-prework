require 'pry'
def consolidate_cart(cart)
  result = {}
  cart.each_with_index do |item, index|
    #binding.pry
    item.each do |food, info|
      #binding.pry
      if result[food]
        result[food][:count] += 1
      else
         result[food] = info
         result[food][:count] = 1
       end
      end
  end
  result
  #binding.pry
end

def apply_coupons(cart, coupons)
   result = {}
   cart.each do |food, info|
     coupons.each do |coupon|
       if food == coupon[:item] && info[:count] >= coupon[:num]
         #binding.pry
         info[:count] =  info[:count] - coupon[:num]
         if result["#{food} W/COUPON"]
           result["#{food} W/COUPON"][:count] += 1
         else
           result["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
         end
       end
     end
     result[food] = info
   end
   result
end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
