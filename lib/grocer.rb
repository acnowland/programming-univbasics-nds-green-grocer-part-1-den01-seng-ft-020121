require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |list|
    if list[:item] == name
      return list
    end
  end
  return nil
end

def consolidate_cart(cart)
  cart_array = []


  cart.each do |item_from_cart|
    new_item = item_from_cart[:item]
    to_add = {}
    in_cart = find_item_by_name_in_collection(new_item,cart_array)
    if in_cart
      puts "already here"
      location = cart.index(in_cart)
      cart[location][:count] += 1
    else
      puts "need to add to cart"
      to_add = item_from_cart
      to_add[:count] = 1
      cart_array.push(to_add)
    end
  end
  puts cart_array
  return cart_array
end










  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.




  