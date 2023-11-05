import itertools, random
 
# make a deck of cards
cards = ['Spade', 'Heart', 'Diamond', 'Club']
deck = list(itertools.product(range(1, 14), cards))
 
# using random function to shuffle the deck
random.shuffle(deck)
 
# draw card from user
no_of_cards = int(input("How many cards you want to display?: "))
print("You got:")
for i in range(no_of_cards):
    print(deck[i][0], "of", deck[i][1])