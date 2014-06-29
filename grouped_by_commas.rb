# Finish the solution so that it takes an input 'n' (integer) and returns a string that is the decimal representation of the number grouped by commas after every 3 digits.

# Assume: 0 <= n < 1000000000

# 1 -> "1"

# 10 -> "10"

# 100 -> "100"

# 1000 -> "1,000"

# 10000 -> "10,000"

# 100000 -> "100,000"

# 1000000 -> "1,000,000"

# 35235235 -> "35,235,235"


# def solution(n)
#   result = ''
#   numbers = n.to_s.split('')
#   count = 0
#   while numbers.length != 0
#     if count % 3 != 0
#       result = numbers.pop + result
#     else
#       result = numbers.pop + ',' + result
#     end
#     count += 1
#   end
#   result[0..-2]
# end

def solution(n)
  n.to_s.reverse.scan(/\d{1,3}/).join(',').reverse
end