class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil  
    most_common_count = 0
    @text.chars.each do |char|          
      next unless is_letter?(char) 
      counter[char] = (counter[char] || 1) + 1 

      if counter[char] > most_common_count      
        most_common = char                          
        most_common_count = counter[char]                
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-zA-Z]/ 
  end
end

counter = LetterCounter.new("Digital Punk")
counter2 = LetterCounter.new("aaaassddfgh")
counter3 = LetterCounter.new("otnjsbdinbjdnbjinvmreoigntmrungjojeom")
p counter.calculate_most_common
p counter2.calculate_most_common
p counter3.calculate_most_common

# Intended output:
# [2, "i"]
# Current output
# [3, "D"]
#at the second i it still thinks D is the most common character with a count of 3
#I removed the i from the regexp, now i is the most common character.
#The counter hash values start the value at 2 not at 1
#after the second i the most_common_count becomes 3 from 1