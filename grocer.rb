def consolidate_cart(cart)
  # code here
{
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 2},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}
end

def apply_coupons(cart, coupons)
  # code here
{
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 1},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1},
  "AVOCADO W/COUPON" => {:price => 5.0, :clearance => true, :count => 1},
}
end

def apply_clearance(cart)
  # code here
{
  "PEANUTBUTTER" => {:price => 2.40, :clearance => true,  :count => 2},
  "KALE"         => {:price => 3.00, :clearance => false, :count => 3}
  "SOY MILK"     => {:price => 3.60, :clearance => true,  :count => 1}
}
end

def checkout(cart, coupons)
  # code here
end
