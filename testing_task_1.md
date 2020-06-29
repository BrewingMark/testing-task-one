### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  def checkforAce(card)# the method name should be in lower/snake case.
    if card.value = 1 # This assigns 1 to value instead of comparing.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # dif should be def. Also there is no comma between cards 1 & 2.
  if card1.value > card2.value # If statement should be tabbed in for clarity.
    return card # should be return card1.
  else
    return card2
  end
end # Not aligned with the start of the method. Should be tabbed in.
end # superfluous end.

def self.cards_total(cards) # Out of alignment. Should be tabbed in.
  total # Undefined local variable. Should be set to = 0.
  for card in cards
    total += card.value
    return "You have a total of" + total # Total value will be directly appended to "of".
  end # the return statement should be outside the for loop
end

# Missing end for class definition.
```
