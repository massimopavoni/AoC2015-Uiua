~ "RandomUtils/Split.ua" ~ LinesF! SplitF!

# I Was Told There Would Be No Math

# ------------------------------------------------------------------------------------------------
# Parsers

PresentDimensions ↚ (
  # Split by newline
  LinesF!(
    SplitF!⋕ @x # Parse integers split by x
  )
)

# ------------------------------------------------------------------------------------------------
# Functions

RowSumSum! ↚ /+ + ≡^0 # Apply function on rows and sum everything

# ------------------------------------------------------------------------------------------------
# Exports

TotalWrappingPaper ← (
  PresentDimensions
  RowSumSum!(
    × ↻₁ . # Combination products
    ⟜/↧    # Smallest side area
    /+ ×₂  # Surface area
  )
)

TotalRibbon ← (
  PresentDimensions
  RowSumSum!⊃(
    /×         # Volume
  | ×₂ /+ ↙₂ ⍆ # Smallest perimeter
  )
)
