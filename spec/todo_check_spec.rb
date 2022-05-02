require_relative "../programs/todo_check.rb"

RSpec.describe "todo_check method" do
  context("given a string list") do
    it("returns true if element is included") do
      result = todo_check("get milk, walk the dog, fight bear", "get milk")
      expect(result).to eq(true)
    end
  end

  context("given a string list") do
    it("returns false if element is NOT included") do
      result = todo_check("clean the room, cook dinner", "get milk")
      expect(result).to eq(false)
    end
  end

  context("giving faulty argument") do
    it("throws an error") do
      expect { todo_check("", "fight bear") }.to raise_error("Not a valid input.")
    end

    it("throws an error") do
      expect { todo_check("blabla, moreblabla", "") }.to raise_error("Not a valid input.")
    end
  end
end
