require 'pry'

class String

  def sentence?
    return self.end_with?(".") ? true : false
  end

  def question?
    return self.end_with?("?") ? true : false
  end

  def exclamation?
    return self.end_with?("!") ? true : false
  end

  def count_sentences
    number_of_sentences = 0
    search_array = self.split(" ")

    search_array.each {|ender|
      if ender.exclamation? || ender.question? || ender.sentence? 
        number_of_sentences += 1
      end
    }
    
    return number_of_sentences
  end


end