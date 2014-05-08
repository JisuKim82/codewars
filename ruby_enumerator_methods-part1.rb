# data = [
#   {age: 40, sex: :m},
#   {age: 24, sex: :f},
#   {age: 56, sex: :m},
#   {age: 45, sex: :m},
#   {age: 23, sex: :f} 
# ]

# Finish the provided method so that it returns true if all of the 
# items matching the sex value have ages greater than the value provided.

# check_ages?(data, :f, 22) # should be true
# check_ages?(data, :m, 50) # should be false

#iterate through the data array of hashes
#if hash[sex] equals the gender && hash[age] less than age parameter return false
#else return true

def check_ages?(data,gender,age)
  data.each do |hash|  
    return false if hash[:sex]==gender && hash[:age]<=age
  end
  true
end