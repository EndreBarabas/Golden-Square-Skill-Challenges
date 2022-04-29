require_relative '../programs/read_time.rb'

RSpec.describe "read_time method" do
    context "given an emptry string" do
      it "returns 0" do
        result = read_time("")
        expect(result).to eq(0)
      end
    end

    context "given a string under 200 words" do
        it "returns 1" do
            result = read_time("one " * 200)
            expect(result).to eq(1)
        end
    end

    context "given a string between 400 and 600 words" do
        it "returns 3" do
            result = read_time("one " * 500)
            expect(result).to eq(3)
        end
    end

    context "given a string with 6533 words" do
        it "returns 33" do
            result = read_time("one " * 6533)
            expect(result).to eq(33)
        end
    end
end