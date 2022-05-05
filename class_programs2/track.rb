class Track
  def initialize(title, artist) # title is a string, artist is a string
    @title = title
    @artist = artist
  end

  def title
    return @title
  end

  def format
    return("#{@title} by #{@artist}")
    # Returns a string of the form "TITLE by ARTIST"
  end

end