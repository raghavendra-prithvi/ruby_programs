class Puzzle

  #get_puzzle Should get the strings of project

  def initialize( width, height )
    #@puzzle = [ 1,2,3,4,5,6,7,8, " "]
    @puzzle = [[1,2,3],[4,5,6],[7,8," "]] 
    @width = width
    @height = height
    @current_x_pointer = 2
    @current_y_pointer = 2
  end
  
  def get_puzzle
    @puzzle.to_s  
  end
    
  def set_puzzle
    puts "Resetting puzzle"
    @puzzle = [[1,2,3],[4,5,6],[7,8," "]] 
    @puzzle.each do |p|
      p.each do |e|
        print e.to_s + " "
      end  
      puts ""
    end  
    #return @puzzle.to_s
  end
  
  #Scramble method
  def scramble 
    @puzzle.shuffle!
    @puzzle.each do |p|
      p.shuffle!
    end
    @puzzle.each_with_index do |p,i|
      p.each_with_index do |e,j|
        if(e==" ")
            @current_x_pointer = i
            @current_y_pointer = j
          end
        print e.to_s + " "
      end  
      puts ""
    end
  end
  
  #UP
  def u
        old_x_pointer = @current_x_pointer    
        if @current_x_pointer > 0
          @current_x_pointer =  @current_x_pointer - 1
        end
        temp = @puzzle[@current_x_pointer][@current_y_pointer]
        @puzzle[old_x_pointer][@current_y_pointer] = temp
        @puzzle[@current_x_pointer][@current_y_pointer] = " "
    
        @puzzle.each do |p|
          p.each do |e|
            print e.to_s + " "
          end  
          puts ""
        end
  end
  
  #down
  def d
        old_x_pointer = @current_x_pointer    
        if @current_x_pointer < (@height -1)
            @current_x_pointer =  @current_x_pointer + 1
        end
        temp = @puzzle[@current_x_pointer][@current_y_pointer]
        @puzzle[old_x_pointer][@current_y_pointer] = temp
        @puzzle[@current_x_pointer][@current_y_pointer] = " "
        
        @puzzle.each do |p|
          p.each do |e|
            print e.to_s + " "
          end  
          puts ""
        end
  end
  
  
  #Left
  def l
        old_y_pointer = @current_y_pointer    
        if @current_y_pointer > 0
            @current_y_pointer =  @current_y_pointer - 1
        end
        temp = @puzzle[@current_x_pointer][@current_y_pointer]
        @puzzle[@current_x_pointer][old_y_pointer] = temp
        @puzzle[@current_x_pointer][@current_y_pointer] = " "
        
        @puzzle.each do |p|
          p.each do |e|
            print e.to_s + " "
          end  
          puts ""
        end
  end
  
  #Right
  def r
        old_y_pointer = @current_y_pointer    
        if @current_y_pointer < (@width -1)
            @current_y_pointer =  @current_y_pointer + 1
        end
        temp = @puzzle[@current_x_pointer][@current_y_pointer]
        @puzzle[@current_x_pointer][old_y_pointer] = temp
        @puzzle[@current_x_pointer][@current_y_pointer] = " "
    
        @puzzle.each do |p|
          p.each do |e|
            print e.to_s + " "
          end  
          puts ""
        end
  end  
end

puzzle = Puzzle.new(3,3)

puzzle.scramble
i = 0 
while(i == 0)
  puts "Please Enter Your choice"
  c = gets.chomp
  if(c == 'S' || c == 's')
      puzzle.set_puzzle
  elsif(c == 'U' || c == 'u')
      puzzle.u
  elsif(c == 'D' || c == 'd')
      puzzle.d
  elsif(c == 'R' || c == 'r')
      puzzle.r
  elsif(c == 'L' || c == 'l')  
      puzzle.l
  elsif(c == 'X' || c == 'x')  
      i = 1
  else
    puts "******Please Enter Valid Input**********"
  end
end