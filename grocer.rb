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
coupons.each do |coupon|
     if cart.keys.include? coupon[:item]
       if cart[coupon[:item]][:count] >= coupon[:num]
         new_name = "#{coupon[:item]} W/COUPON"
         if cart[new_name]
           cart[new_name][:count] += coupon[:num]
         else
           cart[new_name] = {
             count: coupon[:num],
             price: coupon[:cost]/coupon[:num],
             clearance: cart[coupon[:item]][:clearance]
           }
         end
         cart[coupon[:item]][:count] -= coupon[:num]
       end
     end
   end
   cart
end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
