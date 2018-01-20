require './toy_robot.rb'

RSpec.describe ToyRobot do
  describe '#place' do
    it 'places the toy robot at the given location' do
      new_robot = ToyRobot.new
      new_robot.place(2, 1, "North")
      expect(new_robot.report).to eq("I'm at 2, 1 facing North")
    end
  end

  describe '#move' do
    context 'when the move is valid' do
      it 'moving robot at the given direction' do
        new_robot = ToyRobot.new
        new_robot.place(2, 1, "North")
        new_robot.move
        expect(new_robot.report).to eq("I'm at 2, 2 facing North")
      end
    end
    context 'when it hits the edge of a table' do
      it 'raises an error' do
        new_robot = ToyRobot.new
        new_robot.place(4, 0, "East")
        expect {new_robot.move}.to raise_error("invalid move")
      end
    end
  end 

  describe '#left' do
    it 'turning robot at the given direction' do
      new_robot = ToyRobot.new
      new_robot.place(2, 1, "North")
      new_robot.left
      expect(new_robot.report).to eq("I'm at 2, 1 facing West")
    end
  end

  describe '#right' do
    it 'turning robot at the given direction' do
      new_robot = ToyRobot.new
      new_robot.place(2, 1, "North")
      new_robot.right
      expect(new_robot.report).to eq("I'm at 2, 1 facing East")
    end
  end
end