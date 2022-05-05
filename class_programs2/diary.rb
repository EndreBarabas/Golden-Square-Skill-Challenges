class Diary
  def initialize
    @entries = []
  end

  def add(entry)        # entry is an instance of DiaryEntry
    @entries.push(entry)
  end

  def all
    return @entries   # Returns a list of instances of DiaryEntry
  end

  def count_words
    return @entries.map do |entry|
      entry.count_words()
    end.sum
  end

  def reading_time(wpm)
    return (count_words() / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    return readable_entries(wpm, minutes).max_by(&:count_words)
    #.filter filters out an array where the elements are filtered based on a condition
    #.first returns the array's first element
  end
  def readable_entries(wpm, minutes)
    return @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end
end

