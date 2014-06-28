# Write a program that will calculate the number of trailing zeros in a factorial of a given number.

# N! = 1 * 2 * 3 * 4 ... N

# zeros(12) = 2 # 1 * 2 * 3 .. 12 = 479001600 
# that has 2 trailing zeros 4790016(00)
# Be careful 1000! has length of 2568 digital numbers.

#1st Solution
# def zeros(n)
#   digits = factorial(n).to_s.split('')
#   zeros=0
#   while digits[-1] == '0'
#     zeros += 1
#     digits.pop
#   end
#   zeros
# end


# def factorial(n)
#   result = 1
#   (1..n).each do |x|
#     result *= x
#   end
#   result
# end

#2nd Solution to speed up the code

def zeros(n)
   x = 5
   counter = 0
   while n/x >= 1
     p counter += n/x
     x*=5 
   end 
  counter
end
