require_relative '../task'
describe Task do
  describe "#initialize " do
    it "creates a task with value as an argument" do
      task = Task.new("make shopping")
      expect(task.value).to eq("make shopping")
    end
    it "sets the default value of done as false" do
      task = Task.new("go for a walk")
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