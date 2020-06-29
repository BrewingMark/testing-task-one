require( 'minitest/autorun' )
require('minitest/reporters')
require_relative( '../card_game.rb' )
require_relative( '../card.rb' )
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



class TestCardGame < MiniTest::Test

  def setup()
    @card1 = Card.new("spades", 1)
    @card2 = Card.new("hearts", 4)
    @card3 = Card.new("clubs", 10)
    @cards = [@card1, @card2, @card3]
  end

  def test_card_has_suit()
    assert_equal("spades", @card1.suit())
  end

  def test_card_has_value()
    assert_equal(1, @card1.value())
  end

  def test_check_for_ace_true()
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_check_for_ace__not_ace()
    result = CardGame.check_for_ace(@card2)
    assert_equal(false, result)
  end

  def test_highest_card__true()
    result = CardGame.highest_card(@card3, @card2)
    assert_equal(@card3, result)
  end

  def test_cards_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 15", result)
  end

end
