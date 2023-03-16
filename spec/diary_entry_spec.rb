require 'diary_entry'

RSpec.describe DiaryEntry do
  context "initalise" do
    it "returns title" do
      diary_entry = DiaryEntry.new("Hi", "Hello")
      expect(diary_entry.title).to eq "Hi"
    end

    it "returns contents" do
      diary_entry = DiaryEntry.new("Hi", "Hello")
      expect(diary_entry.contents).to eq "Hello"
    end

    it "returns word count" do
      diary_entry = DiaryEntry.new("Hi", "Hello world, today is Thursday")
      expect(diary_entry.word_count).to eq 5
    end
  end

  it "returns a formatted version of the diary entry" do
    diary_entry = DiaryEntry.new("Hi", "Hello world, today is Thursday")
    expect(diary_entry.format).to eq "Hi - Hello world, today is Thursday"
  end
end