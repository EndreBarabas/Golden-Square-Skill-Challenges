require_relative '../class_programs/tracker.rb'

RSpec.describe Tracker do
  it("without input, returns empty string") do
    tracker = Tracker.new()
    result = tracker.show()
    expect(result).to eq("")
  end

  context("given a track") do
    it("returns the track as string") do
      tracker = Tracker.new()
      tracker.add("Moby - Porcelain")
      result = tracker.show()
      expect(result).to eq("Moby - Porcelain")
    end
  end

  context("given multiple tracks") do
    it("returns all in string separated by commas") do
      tracker = Tracker.new()
      tracker.add("Moby - Porcelain")
      tracker.add("Pink Floyd - Another brick in the wall")
      result = tracker.show()
      expect(result).to eq("Moby - Porcelain, Pink Floyd - Another brick in the wall")
    end
  end
end