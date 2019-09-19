require 'pry'

class String

  def sentence?
   self.end_with?(".")
  end

  def question?
self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  string_to_array=self.split(" ")
  counter=0
  string_to_array.each do |word| 
    if word.end_with?(".")||word.end_with?("!")||word.end_with?("?")
    counter +=1
  end
end
return counter
end
end

try = String.new
try.sentence?
