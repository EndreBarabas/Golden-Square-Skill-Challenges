class GrammarStats
  def initialize
    # ...
  end

  def check(text)
    text[0] == text[0].upcase && ["?", "!", "."].include?(text[-1]) ? true : false
  end

  def percentage_good

    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

#shite = GrammarStats.new()
#puts shite.check("This is a proper English sentence.")
