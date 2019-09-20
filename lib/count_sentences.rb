require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      false
    end
  end

  def count_sentences
   sentences = []
   split_sentences = self.split(/(?<=[?.!])\s*/)
   split_sentences.each do |sentence|
     sentences << sentence if sentence.start_with?(/[A-Za-z]/)
   end
   sentences.length
 end

end
