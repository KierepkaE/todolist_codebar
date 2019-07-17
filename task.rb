
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
  end

  def emoji_status
    if @done
    '                 ✅  '
    else
     '                 ❌  '
    end
  end

  def set_as_pending
    @done = false
  end

  def to_s
    value
  end
end
