require_relative "../class_programs/grammar_stats.rb"

RSpec.describe GrammarStats do
  grammar_stats = GrammarStats.new()
  context("given a string with a capital letter and punctuation mark") do
    it("returns true") do
      result = grammar_stats.check("Me no speak London.")
      expect(result).to eq(true)
    end
  end
  context("given a string with NOT a capital letter and NO punctuation mark") do
    it("returns false") do
      result = grammar_stats.check("i can speak exquisite english")
      expect(result).to eq(false)
    end
  end
  context("given a string with a capital letter and NO punctuation mark") do
    it("returns false") do
      result = grammar_stats.check("I can speak considerable English")
      expect(result).to eq(false)
    end
  end
  context("given a string with NOT a capital letter and punctuation mark") do
    it("returns false") do
      result = grammar_stats.check("autocorrect is off.")
      expect(result).to eq(false)
    end
  end

  it("returns the percentage of the checked tests") do
    result = grammar_stats.percentage_good()
    expect(result).to eq(1..100)
  end
end
