require_relative '../class_programs2/diary_entry.rb'

RSpec.describe DiaryEntry do
  it("returns title as string") do
    diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*450)
    expect(diaryentry.title()).to eq("Many dogs at once")
  end

  it("returns the contents as a string") do
    diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*450)
    expect(diaryentry.contents()).to eq("dogs "*450)
  end

  it("returns the amount of words in contents as integer") do
    diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*450)
    expect(diaryentry.count_words()).to eq(450)
  end

  context("given the words per minute as input") do
    it("returns an integer") do
      diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*450)
      expect(diaryentry.reading_time(200)).to eq(3)
    end
  end
  context("given the words per minute as input") do
    it("returns an integer") do
      diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*800)
      expect(diaryentry.reading_time(200)).to eq(4)
    end
  end

  context("given words per minute and 2 minutes to read a page") do
    it("returns a chunk of text") do
      diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*800)
      expect(diaryentry.reading_chunk(200, 2)).to eq( ("dogs "*400).strip)
    end
  end

  context("given words per minute and 2 minutes to read a page") do
    it("returns the next chunk of text") do
      diaryentry = DiaryEntry.new("Many dogs at once", "dogs "*500)
      diaryentry.reading_chunk(200 , 2)
      diaryentry.reading_chunk(200 , 2)
      expect(diaryentry.reading_chunk(200, 2)).to eq( ("dogs "*400).strip)
    end
  end

end
