require 'diary'

RSpec.describe Diary do
  it "returns an error for an empty diary" do
    diary = Diary.new
    expect(diary.view_diary).to eq []
  end
end