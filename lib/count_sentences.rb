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
    sentences = []
    split_sentences = self.split(/(?<=[?.!])\s*/)
    split_sentences.each do |sentence|
      sentences << sentence if sentence.start_with?(/[A-Za-z]/)
    end
    sentences.length
  end
end
