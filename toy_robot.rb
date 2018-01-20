class ToyRobot

  def initialize (width, height)
    @x_location = 0
    @y_location = 0
    @orientation = "North"
    @x_table = width
    @y_table = height
  end

  def place(x ,y ,f)
    @x_location = x
    @y_location = y
    @orientation = f
  end

  def report
   "I'm at #{@x_location}, #{@y_location} facing #{@orientation}" 
  end

  def move
    case @orientation
    when "North" 
      if  @y_location < @y_table
        @y_location += 1
      else 
        raise 'invalid move'
      end
    when "South" 
      if  @y_location > 0
        @y_location -= 1
      else 
        raise 'invalid move'
      end
    when "East" 
      if @x_location < @x_table
        @x_location +=1
      else 
        raise 'invalid move'
      end
    when "West"
      if @x_location > 0
        @x_location -=1
      else 
        raise 'invalid move'
      end
    else 
      raise 'invalid move'
    end 
  end

  def left
    case @orientation
    when "North"
      @orientation = "West"
    when "East"
      @orientation = "North"
    when "South"
      @orientation = "East"
    when "West"
      @orientation = "South"
    else 
      "error"
    end
  end

  def right
    case @orientation
    when "North"
      @orientation = "East"
    when "East"
      @orientation = "South"
    when "South"
      @orientation = "West"
    when "West"
      @orientation = "North"
    else 
      "error"
    end
  end
end

class Table 
  def initialize (width, height)
    table = {
      width: width,
      height: height,
    }
  end
end
