```Ruby
# 1
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
diary.add(entry_1)
diary.view_all # => entry_1

# 2
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(2, 2) # => [entry_1]

# 3
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(2, 10) # => [entry_1, entry_2]

# 3
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my day went well")
entry_2 = DiaryEntry.new("my second title", "my day went well, so well in fact")
diary.add(entry_1)
diary.add(entry_2)
diary.find_readable(1, 1) # => []


```