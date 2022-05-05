require_relative '../class_programs2/diary.rb'
require_relative '../class_programs2/diary_entry.rb'

RSpec.describe "integration" do
  context("it counts words in all diary entries") do
    it("return integer") do
      diary = Diary.new()
      diary_entry1 = DiaryEntry.new("Many dogs in one place", "dogs " * 450)
      diary_entry2 = DiaryEntry.new("Even more dogs in one place", "dogs " * 550)
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.count_words).to eq(1000)
    end
  end

  context("looks at all the entries reading time") do
    it("returns an integer") do
      diary = Diary.new()
      diary_entry1 = DiaryEntry.new("Many dogs in one place", "dogs " * 450)
      diary_entry2 = DiaryEntry.new("Even more dogs in one place", "dogs " * 550)
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.reading_time(200)).to eq(5)
    end
  end
  context("based on  words per minute and minutes") do
    it("returns an entry") do
      diary = Diary.new()
      diary_entry1 = DiaryEntry.new("Many dogs in one place", "dogs " * 450)
      diary_entry2 = DiaryEntry.new("Even more dogs in one place", "dogs " * 650)
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      result = diary.find_best_entry_for_reading_time(200, 3)
      expect(result).to eq(diary_entry1)
    end
  end
end