require_relative '../class_programs2/track.rb'

RSpec.describe Track do
  it("constructs") do
    track = Track.new("Porcelain", "Moby")
  end

  it("returns title as string") do
    track = Track.new("Porcelain", "Moby")
    result = track.title()
    expect(result).to eq("Porcelain")
  end

  it("returns a string as: TITLE by ARTIST") do
    track = Track.new("Porcelain", "Moby")
    result = track.format()
    expect(result).to eq("Porcelain by Moby")
  end
end