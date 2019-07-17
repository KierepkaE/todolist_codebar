require_relative '../task'

describe Task do
  describe "#initialize " do
    let(:value) {"cook"}
    let(:task) {Task.new(value)}

    it "creates a task with value as an argument" do
      expect(task.value).to eq(value)
    end
    it "sets the default value of done as false" do
      expect(task.done).to eq(false)
    end
  end

  describe "#set_as_done" do
    it "changes the value of done to true" do
      task = Task.new("eat pizza")
      task.set_as_done
      expect(task.done).to eq(true)
    end
  end

  describe "#done?" do
    it "return default value of done" do
    task = Task.new("drink acerola")
    expect(task.done?).to eq(false)
    end

    it "return changed value of done" do
      task = Task.new("eat kimchi")
      task.set_as_done
      expect(task.done).to eq(true)
    end
  end
end