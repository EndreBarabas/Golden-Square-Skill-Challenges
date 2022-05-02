require_relative '../programs/example2.rb'

RSpec.describe "check_grammar method" do
  it "throws an error with empty string" do
    expect{ check_grammar("")}.to raise_error("This is a faulty input.")
  end

end