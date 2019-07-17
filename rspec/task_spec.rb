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
end