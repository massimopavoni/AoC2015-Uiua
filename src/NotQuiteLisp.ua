# Not Quite Lisp

# Parsers

LispToMoves ↚ (
  ⊗:"()" # Parentheses indices
  - ⟜¬   # Up and down moves
)

# Exports

FinalFloor ← (
  LispToMoves
  /+ # Move up and down
)

WhenBasement ← (
  LispToMoves
  +1 ⊗¯1 \+ # First basement index
)
