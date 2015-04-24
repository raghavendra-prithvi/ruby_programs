require "minitest/autorun"
require_relative './puzzle.rb'

class TestPuzzle < Minitest::Test
  def setup
    @my_puzzle = Puzzle.new(3,3)
    assert_equal( "[[1, 2, 3], [4, 5, 6], [7, 8, \" \"]]", @my_puzzle.get_puzzle() )
  end
  
  def test_setPuzzle
      @my_puzzle = Puzzle.new(3,3)
      @my_puzzle.set_puzzle()
      assert_equal( "[[1, 2, 3], [4, 5, 6], [7, 8, \" \"]]", @my_puzzle.get_puzzle() )
  end
  
  def test_moveUP
      @my_puzzle = Puzzle.new(3,3)
      #calling up method
      @my_puzzle.u()
      assert_equal( "[[1, 2, 3], [4, 5, \" \"], [7, 8, 6]]", @my_puzzle.get_puzzle() )
  end  
  
  def test_moveDown
      @my_puzzle = Puzzle.new(3,3)
      #calling down method
      @my_puzzle.d()
      assert_equal( "[[1, 2, 3], [4, 5, 6], [7, 8, \" \"]]", @my_puzzle.get_puzzle() )
  end  
  
  def test_moveLeft
      @my_puzzle = Puzzle.new(3,3)
      #calling down method
      @my_puzzle.l()
      assert_equal( "[[1, 2, 3], [4, 5, 6], [7, \" \", 8]]", @my_puzzle.get_puzzle() )
  end  
  
  def test_moveLeft
      @my_puzzle = Puzzle.new(3,3)
      #calling down method
      @my_puzzle.r()
      assert_equal( "[[1, 2, 3], [4, 5, 6], [7, 8, \" \"]]", @my_puzzle.get_puzzle() )
  end  
  
end
