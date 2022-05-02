require_relative '../programs/extract_up.rb'

RSpec.describe "extract_uppercase method" do
  context "given a string with words having not just capital letters" do
    it "returns empty array" do
      result = extract_uppercase("good morning")
      expect(result).to eq([])
    end
  end
  context("given a string with only capital letters")do
    it "returns the words in an array" do
    result = extract_uppercase("GOOD MORNING")
    expect(result).to eq(["GOOD", "MORNING"])
    end
  end

  context("given a string with mixed upcased words") do
    it "returns the words with only capital letters" do
      result = extract_uppercase("GOOD morning VIETNAM")
      expect(result).to eq(["GOOD", "VIETNAM"])
    end
  end

  context("given an empty string") do
    it "throws an error" do
      expect{ extract_uppercase("") }.to raise_error("Invalid input")
    end
  end

  context("given an empty string") do
    it "throws an error" do
      expect{ extract_uppercase(" ") }.to raise_error("Invalid input")
    end
  end

end