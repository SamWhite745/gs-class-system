```Ruby
# 1
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went extremely well")
diary.add(entry_1)
diary.add(entry_2)
diary.list_all # => [entry_1, entry_2]

# 2
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went extremely well")
diary.add(entry_1)
diary.add(entry_2)
diary.view_diary # => ["my title - my day went well", "my second title - my day went extremely well"]

# 3
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(2, 2) # => ["my title - my day went well"]

# 4
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(2, 10) # => ["my title - my day went well", "my second title - my day went well, so well in fact"]

# 5
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(1, 1) # => []

# 6
diary = Diary.new
task_1 = Todo.new("Laundry")
diary.add_task(task_1)
task_2 = Todo.new("Dog walk")
diary.add_task(task_2)
diary.view_tasks # => ["Laundry", "Dog walk"]

# 7 
diary = Diary.new
task_1 = Todo.new("Laundry")
diary.add_task(task_1)
task_2 = Todo.new("Dog walk")
diary.add_task(task_2)
diary.delete_task(task_2)
diary.view_tasks # => ["Laundry"]

# 8
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well 07777 789 123, my other number is 07654123456")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact 07777 777888")
entry_3 = DiaryEntry.new("my final title", "hello world!")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.find_contacts # => ["07777789123","07654123456", "07777777888"]

```