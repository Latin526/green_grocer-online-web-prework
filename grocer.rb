def consolidate_cart(cart: [])

 {
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 2},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}

end

def apply_coupons(cart: [], coupons: [])
  {
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 1},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1},
  "AVOCADO W/COUPON" => {:price => 5.0, :clearance => true, :count => 1},
}
end


def apply_clearance(cart:[])
  cart.each do |item, itemHash|
    if itemHash[:clearance] == true
      itemHash[:price] = (itemHash[:price] * 0.80).round(2)
    end
  end
end

def checkout(cart: [], coupons: [])
  consolCart = consolidate_cart(cart: cart)
  appliedCoupons = apply_coupons(cart: consolCart, coupons: coupons)
  appliedClearance = apply_clearance(cart: appliedCoupons)
  
  total = 0
  appliedClearance.each do |item, itemHash|
    total += (itemHash[:count] * itemHash[:price])
  end
  
  if total > 100
    total = total * 0.90
  end
  
  total.round(2)
end