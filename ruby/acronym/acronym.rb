module Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/[ |-]+/)
    first_letters = words.map { |w| w[0].upcase }
    first_letters.join('')
  end
end
