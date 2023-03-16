```Ruby
# 1
diary_entry = DiaryEntry.new("Hi", "Hello")
diary_entry.title # => "Hi"

# 2
diary_entry = DiaryEntry.new("Hi", "Hello")
diary_entry.contents # => "Hello"

# 3
diary_entry = DiaryEntry.new("Hi", "Hello world, today is Thursday")
diary_entry.word_count # => 5


```