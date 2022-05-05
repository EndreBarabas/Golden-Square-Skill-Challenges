class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) # track is an instance of Track
    @tracks.push(track)
    # Track gets added to the library
    # Returns nothing
  end

  def all
    return @tracks
  end
  
  def search_by_title(keyword) # keyword is a string
    @tracks.each do |x|
      if x.include?(keyword)
        return x
      end
    end
    return("Track not found.")
    # Returns a list of tracks with titles that include the keyword
  end
end