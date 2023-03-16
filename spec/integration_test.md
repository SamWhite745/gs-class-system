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


```