class Diary
  def initialize
    @entries = []
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
end