require_relative '../programs/check_grammar.rb'

RSpec.describe "check_grammar method" do
    context "not a sentence input" do
        it "returns an error" do
            expect{ check_grammar("")}.to raise_error "That is not a sentence."
        end
    end

    context "capital letter and mark present" do
        it "returns true" do
            result = check_grammar("I don't speak Spanish.")
            expect(result).to eq(true)
        end
    end
end