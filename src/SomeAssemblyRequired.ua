~ "RandomUtils/Split.ua" ~ LinesF!
~ "RandomUtils/Regex.ua" ~ C EG G G₀ O P! S

# Some Assembly Required

# ------------------------------------------------------------------------------------------------
# Parsers

CircuitInstructions ↚ (
  LinesF!(
    EG ⬚@0 regex P!{
      O G₀ S G "[a-z0-9]+"     # Optional second argument
      O G₀ $"_.+ " G C "NAOLR" # Optional operation first letter
      , " -> " G ".+"          # First argument and output wire
    }
    ⍜⊏⇌0_3               # Flip to get output wire first
    ⍜⊡₁⍚(⊗:"NAOLR" ⬚@I⊢) # Operation index (5 is assignment)
    ⍜⊏(∵⍣⋕) 2_3          # Try to parse arguments as numbers (0 is empty)
  )
  map⍜⍉°⊂
)

# ------------------------------------------------------------------------------------------------
# Functions

BitWise ↚ (
  # Convert inputs to 16-bit numbers
  ⍜⊙∩(⬚0↙₁₆ ⋯)⨬(
    ¬       # NOT
  | ↧       # AND
  | ↥       # OR
  | ⬚0↻¯ °⋯ # LSHIFT
  | ⬚0↻ °⋯  # RSHIFT
  | ∘       # Assign
  )
)

Signal ↚ |2 memo(
  ⊸get   # Get signal instruction
  ≡⊂ ⊙□  # Join each with whole map
  °{⊙⊙∘} # Unbox them
  ∩₃(
    ⊸(◇type⊢) # Get element type
    # Get signal value (recursively if needed)
    ⨬(∘⊢
    | Signal °{⊙∘}
    )
  )
  ◇BitWise # Apply bitwise operation
)

# ------------------------------------------------------------------------------------------------
# Exports

WireASignal ← Signal "a" CircuitInstructions

OverriddenWireASignal ← (
  Signal "a" . CircuitInstructions
  insert "b" {5 : 0}
  Signal "a"
)
