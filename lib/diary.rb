class Diary
  def initialize
    @entries = []
    @tasks = []
  end

  def add(diary_entry)
    @entries << diary_entry
  end

  def list_all
    return @entries
  end

  def find_readable(wpm, minutes)
    return @entries.select {|entry| entry.word_count <= (wpm*minutes)}.map{|entry| entry.format}
  end  

  def view_diary
    return @entries.map {|entry| entry.format }
  end

  def add_task(task)
    @tasks << task
  end

  def view_tasks
    return @tasks.map { |todo| todo.task }
  end

  def delete_task(task)
    fail "No such task" unless @tasks.include? task
    @tasks.delete(task)
  end
end