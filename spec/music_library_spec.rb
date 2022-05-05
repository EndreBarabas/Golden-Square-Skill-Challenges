require_relative '../class_programs2/music_library.rb'

RSpec.describe MusicLibrary do
  it("constructs") do
    library = MusicLibrary.new()
  end
  
    it("returns the tracklist") do
      library = MusicLibrary.new()
      result = library.all
      expect(result).to eq([])
    end
end