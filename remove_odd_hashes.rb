# To complete this kata remove any hash whose two keys sum to an odd number.

# example:

# remove_odd_hashes(
#   [ {a: 5, b: 5}, 
#     {a: 3, b: 4}, 
#     {a: 2, b: 0}, 
#     {a: 2, b: 1}], 
#   :a, :b)

# returns [{a: 5, b: 5}, {a: 2, b: 0}]

def remove_odd_hashes(array, key_1, key_2)
  array.select{|hash| (hash[key_1]+hash[key_2]).even? }
end