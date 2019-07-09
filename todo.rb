
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
    @list.each do |task|
      puts task.value

    end
  end

  def display_pending_tasks
    pending_tasks.each do |task|
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

class Task
  attr_accessor :value
  def initialize(value)
    @done = false
    @value = value
  end
  def done?
    @done
  end

  def set_as_done
    @done = true
  end

  def set_as_pending
    @done = false
  end
end
