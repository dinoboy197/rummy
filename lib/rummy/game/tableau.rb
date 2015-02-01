require 'rubycards'

module Rummy
  module Game
    # simulates the table objects which don't belong to the players
    class Tableau
      attr_accessor :stack
      attr_accessor :deck
  
      # set up for a new game
      def prepare_game
        # create the deck of cards and shuffle them
        @deck = RubyCards::Deck.new
  
        @deck.shuffle!
  
        # initial stack is empty
        @stack = []
  
        # turn up one card from the stack
        @stack.push(@deck.draw)
      end
    end
  end
end