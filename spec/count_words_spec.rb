require_relative '../programs/count_words.rb'

RSpec.describe "count_words method" do
    it "counts words in a string, returns integer" do
        result = count_words("Testing is quite useful.")
        expect(result).to eq(4)
    end
    
    it "counts words in a string, returns integer" do
        result = count_words("I have been freerunning so far.")
        expect(result).to eq(6)
    end

    it "counts words in a string, returns integer" do
        result = count_words("This is a very basic sentence.")
        expect(result).to eq(6)
    end
end