require_relative '../task'
describe Task do
  describe "#initialize " do
    it "creates a task with value as an argument" do
      task = Task.new("make shopping")
      expect(task.value).to eq("make shopping")
    end
  end
end