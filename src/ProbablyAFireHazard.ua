~ "RandomUtils/Split.ua" ~ LinesF!
~ "RandomUtils/Regex.ua" ~ EG G P! R Rnum

# Probably A Fire Hazard

# Parsers

SantaInstructions ↚ (
  LinesF!(
    EG R P!{
      ".+(.) "       # Action last letter
      , ".*?"        # Two points
      $"_,_". G Rnum # Point coordinates
    }
    ⍜°⊂(
      ◇⊗:"fne" # Action index
      ⋕:       # Parse coordinates numbers
    )
  )
  ⍜⊙⍉⍜⊏⇌ 1_2 # Middle flip for same axis coordinates
)

# Functions

SantaLights! ↚ (
  SantaInstructions  # Parse instructions
  : ↯1000_1000 0     # Initialize grid
  ∧(⊃(°⊟ ↯2_2        # Reshape rectangle coordinates
      ∩(⍜-⇡ °⊟ ⍜⊣+₁) # Coordinate ranges
      ⊞⊂             # Pixel positions
    | ⊣              # Action index
    )
    ⊙:       # Retrieve lights state
    ⍜⊡(^0 :) # Update lights region with action
  )
  /+ ♭ # Count lights on
)

# Exports

SantaLightsOn ← SantaLights!⨬(↧₀|↥₁|¬)

SantaLightsBrightness ← SantaLights!⨬(↥₀ -₁|+₁|+₂)
