require "rummy"
require "test/unit"

include Rummy::Game

class TableauTest < Test::Unit::TestCase
  def test_stack_has_one_card_after_setup
    tableau = Tableau.new
    tableau.prepare_game()
    
    assert_equal(1, tableau.stack.size())
  end
end
