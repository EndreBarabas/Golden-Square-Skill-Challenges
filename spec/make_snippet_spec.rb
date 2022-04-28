require_relative '../programs/make_snippet.rb'

RSpec.describe "first 5 letters display" do
    it "returns first 5 letters of string" do
        result = make_snippet("absolutely")
        expect(result).to eq("absol...")
    end

    it "returns first 5 letters of string" do
        result = make_snippet("ddg")
        expect(result).to eq("ddg")
    end

    it "returns first 5 letters of string" do
        result = make_snippet("basketball")
        expect(result).to eq("baske...")
    end
end