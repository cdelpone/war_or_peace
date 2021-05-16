class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    high_ranking_cards = []

    @cards.each do |card|
      if card.rank >= 11 then
        high_ranking_cards << card
      end
    end
    high_ranking_cards
  end

  def percent_high_ranking
    (high_ranking_cards.length.to_f / @cards.length * 100).round(2)
  end

  def remove_card
    @cards.delete_at(0)
  end

  def add_card(add_card)
    @cards << add_card
  end

end

  #
  # def pull_card[]
  #   @cards << deck
  # end
