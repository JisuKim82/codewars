# Given a standard english sentence passed in as a string, 
# write a method that will return a sentence comprised of the same words, 
# but sorted by their first letter. However, the method of sorting has a twist to it:

# All words that begin with a lower case letter should be at the beginning of the sorted sentence, 
# and sorted in ascending order. All words that begin with an upper case letter should 
# come after that, and should be sorted in descending order. If a word appears twice in the sentence, 
# it should be returned twice in the sorted sentence. Any punctuation must be discarded.

# For example, given the input string "Land of the Old Thirteen! Massachusetts land! land of Vermont and Connecticut!", 
# your method should return "and land land of of the Vermont Thirteen Old Massachusetts Land Connecticut". 
# Lower case letters are sorted a->l->l->o->o->t and upper case letters are sorted V->T->O->M->L->C.


def sort(sentence)
  words = sentence.gsub('!','').split(' ')
  lower_case_words = words.select{|word| word!=word.capitalize}.sort
  upper_case_words = words.select{|word| word==word.capitalize}.sort.reverse

  lower_case_words.join(' ') + ' ' + upper_case_words.join(' ')
end