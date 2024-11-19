# Experimental!

~ "RandomUtils.ua" ~ LF! SB!

# I Was Told There Would Be No Math

# Parsers

PresentDimensions ↚ (
  # Split by newline
  LF!(
    SB!⋕ @x # Parse integers split by x
  )
)

# Functions

SE! ↚ /^0 ↙ ⊙⍆ # Reduce with 0 smallest n elements

RSS! ↚ /+ + ≡^0 # Sum everything after apply 0 on rows

# Exports

TotalWrappingPaper ← (
  PresentDimensions
  RSS!(
    × ↻1 . # Combination products
    ⟜(/↧)  # Smallest side area
    /+ ×2  # Surface area
  )
)

TotalRibbon ← (
  PresentDimensions
  RSS!⊃(
    /×       # Volume
  | ×2 SE!+2 # Smallest perimeter
  )
)
