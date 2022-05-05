class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @contents_arr = @contents.split(' ')
    @counter = 0 #for the reading chunk
    @previous_value = 0
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
    return (count_words.to_f / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    previous_value = @counter
    show_text = wpm*minutes
    @counter += show_text
    return_meee = @contents_arr[previous_value...@counter].join(' ')
    if @counter >= count_words()
      @counter = 0
    end
    return return_meee
  end
end
