module Acronym
  def self.abbreviate(phrase)
    first_letters = ''
    phrase.scan(/\b[a-zA-Z]/) { |l| first_letters += l }
    first_letters.upcase
  end
end
