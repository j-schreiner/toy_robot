require './toy_robot.rb'

RSpec.describe ToyRobot do
  describe '#place' do
    it 'places the toy robot at the given location' do
      robot1 = ToyRobot.new
      robot1.place(2, 1, "North")
      expect(robot1.report).to eq("I'm at 2, 1 facing North")
    end
  end

  describe '#move' do
    context 'when the move is valid' do
      it 'moving robot at the given direction' do
        robot1 = ToyRobot.new
        robot1.place(2, 1, "North")
        robot1.move
        expect(robot1.report).to eq("I'm at 2, 2 facing North")
      end
    end
    context 'when it hits the edge of a table' do
      it 'raises an error' do
        robot1 = ToyRobot.new
        robot1.place(4, 0, "East")
        expect {robot1.move}.to raise_error("invalid move")
      end
    end
  end 

  describe '#left' do
    it 'turning robot at the given direction' do
      robot1 = ToyRobot.new
      robot1.place(2, 1, "North")
      robot1.left
      expect(robot1.report).to eq("I'm at 2, 1 facing West")
    end
  end

  describe '#right' do
    it 'turning robot at the given direction' do
      robot1 = ToyRobot.new
      robot1.place(2, 1, "North")
      robot1.right
      expect(robot1.report).to eq("I'm at 2, 1 facing East")
    end
  end
end