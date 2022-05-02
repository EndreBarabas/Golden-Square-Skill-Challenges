class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @contents_arr = @contents.split(" ")
    @chunk_counter = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents_arr.count
  end

  def reading_time(wpm)
    return (@contents_arr.count.to_f / wpm).ceil
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read

    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.

    #1 page equals wpm times given minutes
    chunk = @contents_arr.count / wpm
    #fuck this, too long
    return (@contents_arr[1..(wpm * minutes)].join(" ")) + " "
  end
end

mydiary = DiaryEntry.new("First day", "doge " * 450)
p mydiary.reading_chunk(200, 1)
