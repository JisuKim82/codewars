# Simple sort, but this time sort regardless of upper / lower case. 
# So the input of

# [ "Hello", "there", "I'm", "fine"]
# is translated to

# ["fine", "Hello", "I'm", "there" ]

def sort_array_2(arr)
  arr.sort{|a,b| a.downcase <=> b.downcase}
end