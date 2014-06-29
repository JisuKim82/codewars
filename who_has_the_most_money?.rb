# You're going on a trip with some students and it's up to you to keep track of how much money each Student has:

class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end
end
# As you can tell, each Student has some fives, tens, and twenties. Your job is to return the name of the student with the most money. If every student has the same amount, then the return value should be "all"

# Notes: 1) Each student will have an unique name 2) There will be a clear winner (either one person has the most or everyone has the same amount) 3) If there is only one student, then that student has the most money

# 1st Solution
# def most_money(students)
#   amounts = {}
#   students.each do |student|
#     amounts[student.name] = (student.fives*5 + student.tens*10 + student.twenties*20)
#   end
  
#   if amounts.values.uniq.count == 1 && amounts.values.count != 1
#     'all'
#   else
#     amounts.sort_by{|name,money| money}.last[0]
#   end
# end

#Refactored
class Student
  def total_money
    fives*5 + tens*10 + twenties*20
  end
end

def most_money(students)
  return "all" if students.length > 1 && students.map(&:total_money).uniq.length == 1
  students.max_by(&:total_money).name
end