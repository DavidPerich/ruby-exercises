# # Write a program that can score a bowling game.

# # Bowling is game where players roll a heavy ball to knock down pins arranged in a triangle. Write code to keep track of the score of a game of bowling.

# # Scoring Bowling
# # The game consists of 10 frames. A frame is composed of one or two ball throws with 10 pins standing at frame initialization. There are three cases for the tabulation of a frame.

# # An open frame is where a score of less than 10 is recorded for the frame. In this case the score for the frame is the number of pins knocked down.

# # A spare is where all ten pins are knocked down after the second throw. The total value of a spare is 10 plus the number of pins knocked down in their next throw.

# # A strike is where all ten pins are knocked down after the first throw. The total value of a strike is 10 plus the number of pins knocked down in their next two throws.
# If a strike is immediately followed by a second strike, then we can not total the value of first strike until they throw the ball one more time.

# # Here is a three frame example:

# # Frame 1	Frame 2	Frame 3
# # X (strike)	5/ (spare)	9 0 (open frame)
# # Frame 1 is (10 + 5 + 5) = 20

# # Frame 2 is (5 + 5 + 9) = 19

# # Frame 3 is (9 + 0) = 9

# # This means the current running total is 48.

# # The tenth frame in the game is a special case. If someone throws a strike or a spare then they get a fill ball.
# Fill balls exist to calculate the total of the 10th frame. Scoring a strike or spare on the fill ball does not give the player more fill balls.
# The total value of the 10th frame is the total number of pins knocked down.

# # For a tenth frame of X1/ (strike and a spare), the total value is 20.

# # For a tenth frame of XXX (three strikes), the total value is 30.

# # Requirements
# # Write code to keep track of the score of a game of bowling. It should support two operations:

# # roll(pins) is called each time the player rolls a ball. The argument is the number of pins knocked down.

# # score() is called only at the very end of the game. It returns the total score for that game.
require 'pry'

class Game 
  attr_accessor :frame
  def initialize
    @history = []
    @game_score = 0
    @frame = Frame.new(1)
  end 
  
  def roll(pins)
    raise RuntimeError, "pins must have a value from 0 to 10" if legal?(pins)
    # binding.pry
    case 
    when (1..10).include?(frame.number) && frame.balls_bowled.zero? then first_ball(pins)
    when (1..9).include?(frame.number) && frame.balls_bowled.nonzero? then second_ball(pins)
    when 10 == frame.number && frame.balls_bowled.nonzero? then last_frame(pins)
    end
  end
  
  def first_ball(pins)
    if strike?(pins)
      # binding.pry
      @game_score += pins
      @strike = true
      @history << @frame.clone
      @frame = Frame.new(frame.number + 1)
    else 
      #need to handle previous strikes. 
      frame.score += pins
      frame.balls_bowled += 1
    end
  end
  
  def second_ball(pins)
    # binding.pry
    raise RuntimeError, "Pin count exceeds pins on the lane" if (frame.score + pins) > 10
    @balls_bowled += 1 
    # need to handle scores
    @game_score += pins 
    @game_score += frame.score 
    @history << @frame.clone
    @frame = Frame.new(frame.number + 1)
  end
  
  def last_frame(pins)
    second_ball(pins)
  end
    
  
  def roll_n_times(rolls, pins) 
    rolls.times {roll(pins)}
  end 
    
  
  def legal?(pins)
    !(0..10).include?(pins)
  end
  

    
    # add the number of pins rolled to the current frame score 
    # add to the number of balls rolled in that frame 
    # if balls bowled is 2 then initialize a new frame with the Frame.new(@current_frame.number + 1) 
    
    # raise RuntimeError error if not between 1..10 
    # raise RuntimeError if the second ball would exceed the pins on the lane 'Pin count exceeds pins on the lane'
    # needs to allow fill ball in last frame if spare - that is a 3rd ball if they make the spare on the second ball
    # need to allow two fill balls in the last frame a strike - but only one
    # Gonna have to deal with bowling a strike on last throw then bowling 
    # Shouldn't allow rolls after the tenth frame. 

  def strike?(pins)
    pins == 10
  end
  
  def spare?(pins)
    (pins + frame.score) == 10
  end
  
  def strike_bonus
    bonus = 0
    binding.pry 
    @history.each.with_index do |frame, index|
      if frame.strike_bonus.true? 
        
      end
        
    # @history.each do
    
    bonus
  end
  
  def spare_bonus
    # @history.each do |
  end
  
  def score
    
    # binding.pry
    # raise RuntimeError, 'Score cannot be taken until the end of the game' if frame.number != 10
    #going to need to handle hte 10 frame. 
    @game_score + strike_bonus + spare_bonus
    # if the score is taken before the end of the very game
    #shouldn't allow score unless all fill balls have been thrown
  end
  
  def game_over? 
    # should check if all frames have been bowled include fill balls
  end
end

class Frame
  attr_accessor :score, :balls_bowled, :number
  
  def initialize(frame_number)
    @number = frame_number
    @balls_bowled = 0 
    @score = 0
    @strike_bonus = false
    @spare_bonus = false
  end
end