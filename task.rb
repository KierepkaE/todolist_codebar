
class Task
  attr_accessor :value, :done
  def initialize(value)
    @done = false
    @value = value
  end
  def done?
    @done
  end

  def set_as_done
    @done = true
    emoji_status
  end

  def emoji_status
    if @done
      @value += '                 ✅  '
    else
      @value += '                 ❌  '
    end
  end

  def set_as_pending
    @done = false
    emoji_status
  end

  def to_s
    value
  end
end
