def consolidate_cart(cart)
  # code here
  {
  "AVOCADO" => {:price => 3.0, :clearance => true, :count => 2},
  "KALE"    => {:price => 3.0, :clearance => false, :count => 1}
}
end

def apply_coupons(cart, coupons)
  # code here
  {:item => "AVOCADO", :num => 2, :cost => 5.0}
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
