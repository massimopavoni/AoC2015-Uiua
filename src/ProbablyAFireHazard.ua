~ "RandomUtils.ua" ~ Lines LinesF!

# Probably A Fire Hazard

# Parsers

SantaInstructions ↚ (
  LinesF!(
    regex$"(.*) _.*?_" .$"_,_" ."(\\d+)" # Regex match line format
    ↘1 °¤                                # Extract instruction info
    ⍜°⊂(
      ⊗:"fne" ⊣°□ # Action index
      ⋕:          # Parse coordinates numbers
    )
  )
  ⍜⊙⍉⍜⊏⇌ 1_2 # Middle flip for same axis coordinates
)

# Functions

SantaLights! ↚ (
  SantaInstructions  # Parse instructions
  : ↯1000_1000 0     # Initialize grid
  ∧(⊃(°⊟ ↯2_2        # Reshape rectangle coordinates
      ∩(⍜-⇡ ⊙+:1 °⊟) # Get coordinate ranges
      ⊞⊂             # Get pixel positions
    | ⊣              # Get action index
    )
    ⊙:       # Retrieve lights state
    ⍜⊡(^0 :) # Update lights region with action
  )
  /+ ♭ # Count lights on
)

# Exports

SantaLightsOn ← SantaLights!⨬(↧0|↥1|¬)

SantaLightsBrightness ← SantaLights!⨬(↥0 -1|+1|+2)
