require_relative '../class_programs2/music_library.rb'
require_relative '../class_programs2/track.rb'

RSpec.describe MusicLibrary do
  it("constructs") do
    library = MusicLibrary.new()
  end
  
  it("returns the tracklist") do
    library = MusicLibrary.new()
    expect(library.all).to eq([])
  end

  context("it adds a track") do
    it("returns them in an array") do
      library = MusicLibrary.new()
      track = Track.new("Porcelain", "Moby")
      library.add(track.format)
      expect(library.all).to eq(["Porcelain by Moby"])
    end
  end

  context("it adds multiple tracks") do
    it("returns them all in a string") do
      library = MusicLibrary.new()
      track1 = Track.new("Porcelain", "Moby")
      track2 = Track.new("Metal Hel", "Mick Gordon")
      library.add(track1.format)
      library.add(track2.format)
      expect(library.all).to eq(["Porcelain by Moby", "Metal Hel by Mick Gordon"])
    end
  end
  
  context("it searches the title with a string") do
    it("returns the titles that has the keyword") do
      library = MusicLibrary.new()
      track1 = Track.new("Porcelain", "Moby")
      track2 = Track.new("Metal Hel", "Mick Gordon")
      library.add(track1.format)
      library.add(track2.format)
      expect(library.search_by_title("Metal")).to eq("Metal Hel by Mick Gordon")
    end
  end

  context("it searches the title with a string") do
    it("returns a message") do
      library = MusicLibrary.new()
      track1 = Track.new("Porcelain", "Moby")
      track2 = Track.new("Metal Hel", "Mick Gordon")
      library.add(track1.format)
      library.add(track2.format)
      expect(library.search_by_title("Bla")).to eq("Track not found.")
    end
  end
end