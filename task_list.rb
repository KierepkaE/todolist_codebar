
class TaskList
  attr_accessor :list
  def initialize
    @list = []
  end

  def add(task)
    @list << Task.new(task)
  end

  def remove_all_tasks!
    @list = []
  end

  def remove_done_tasks
    @list = pending_tasks
  end

  def display_all_tasks
    @list.each_with_index do |task,index|
      puts "Task number #{index} value: #{task.value} and the status is: #{task.emoji_status}"
    end
  end

  def display_pending_tasks
    pending_tasks.each_with_index do |task,index|
      puts task.value

    end
  end

  def display_done_tasks
    @list.select(&:done?).each do |task|
      puts task.value
    end
  end

  def [](index)
    @list[index]
  end

  private
  def pending_tasks
    @list - @list.select(&:done?)
  end
end
