require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.detect {|hash| hash[:item] == name}

end

def consolidate_cart(cart)
  # binding.pry
  # Consult README for inputs and outputs
  con_cart = [];
  # cart.each{|x| x[:count] = 1}
  # binding.pry
  cart.each do |x|
    if !find_item_by_name_in_collection(x[:item], con_cart)
      x[:count] = 1
      con_cart << x
    elsif find_item_by_name_in_collection(x[:item], con_cart)
      x[:count] += 1
    end
  end
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

end


  