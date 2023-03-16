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

  context "when passed multiple Todos" do
    it "shows the list of Todos" do
      diary = Diary.new
      task_1 = Todo.new("Laundry")
      diary.add_task(task_1)
      task_2 = Todo.new("Dog walk")
      diary.add_task(task_2)
      expect(diary.view_tasks).to eq ["Laundry", "Dog walk"]
    end

    it "deletes a task and shows remaining tasks" do
      diary = Diary.new
      task_1 = Todo.new("Laundry")
      diary.add_task(task_1)
      task_2 = Todo.new("Dog walk")
      diary.add_task(task_2)
      diary.delete_task(task_2)
      expect(diary.view_tasks).to eq ["Laundry"]
    end

    context "trying to delete a task that doesnt exist" do
      it "fails" do
        diary = Diary.new
        task_1 = Todo.new("Laundry")
        expect{diary.delete_task(task_1)}.to raise_error "No such task"
      end
    end

    context "given diary entries containing numbers" do
      it "finds all valid numbers" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my title", "my day went well 07777 789 123, my other number is 07654123456")
        entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact 07777 777888")
        entry_3 = DiaryEntry.new("my final title", "hello world!")
        diary.add(entry_1)
        diary.add(entry_2)
        diary.add(entry_3)
        expect(diary.find_contacts).to eq ["07777789123","07654123456", "07777777888"]
      end
    end
  end
end