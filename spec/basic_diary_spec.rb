require_relative "../class_programs/diary.rb"

RSpec.describe DiaryEntry do
  diary = DiaryEntry.new("First day", "doge " * 450)

  it("returns the given title") do
    result = diary.title()
    expect(result).to eq("First day")
  end

  it("returns the contents") do
    result = diary.contents()
    expect(result).to eq("doge " * 450)
  end

  context("counts the numbers in contents") do
    it("returns as an integer") do
      result = diary.count_words()
      expect(result).to eq(450)
    end
  end
  context("given an integer for words per minute") do
    it("returns an integer representing minutes") do
      result = diary.reading_time(200)
      expect(result).to eq(3)
    end
  end
  # `wpm` is an integer representing the number
  # of words the user can read per minute
  # `minutes` is an integer representing the
  # number of minutes the user has to read
  # Returns a string with a chunk of the contents that the user could read
  # in the given number of minutes.
  # If called again, `reading_chunk` should return the next chunk, skipping
  # what has already been read, until the contents is fully read.
  # The next call after that it should restart from the beginning.

  context("given an integer for words per minute and the AVAILABLE minutes") do
    it("returns a string that can be read in the given minutes") do
      result = diary.reading_chunk(200, 1)
      expect(result).to eq("doge " * 200)
    end
  end
  context("if called multiple times") do
    it("returns the correct \"pages\"") do
      result = [diary.reading_chunk(200, 1), diary.reading_chunk(200, 1), diary.reading_chunk(200, 1)]
      expect(result).to eq("doge " * 150)
    end
  end
end
