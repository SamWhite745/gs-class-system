require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do
  context 'when initialized with several diary entries' do
    it "lists all the entries inside the diary" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my title", "my day went well")
      entry_2 = DiaryEntry.new("my second title", "my day went extremely well")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.list_all).to eq [entry_1, entry_2]
    end
    it "reads all the entries in the diary in the formatted version" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my title", "my day went well")
      entry_2 = DiaryEntry.new("my second title", "my day went extremely well")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.view_diary).to eq ["my title - my day went well", "my second title - my day went extremely well"]
    end

    context 'given a reading time' do
      it "returns the readable entries from diary" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my title", "my day went well")
        entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.find_readable(2, 2)).to eq ["my title - my day went well"]
      end

      it "returns all entries when given enough time to cover all" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my title", "my day went well")
        entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.find_readable(2, 10)).to eq ["my title - my day went well", "my second title - my day went well, so well in fact"]
      end

      it "returns nothing if there is not enough time" do 
        diary = Diary.new
        entry_1 = DiaryEntry.new("my title", "my day went well")
        entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.find_readable(1, 1)).to eq []
      end
    end
  end
end