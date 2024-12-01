# Perfectly Spherical Houses In A Vacuum

# ------------------------------------------------------------------------------------------------
# Parsers

ElfInstructions ↚ (
  ⊗:"^v><"                 # Arrow indices
  ≡(⊡:[1_0 ¯1_0 0_1 0_¯1]) # Cardinal moves
)

# ------------------------------------------------------------------------------------------------
# Functions

ScanMoves ↚ \+ ⊂0_0 # Scan elf instructions

CountUnique ↚ /+ ◰ # Count unique

# ------------------------------------------------------------------------------------------------
# Exports

UniqueHouses ← (
  ElfInstructions
  ScanMoves
  CountUnique # Count unique
)

RoboSantaUniqueHouses ← (
  ElfInstructions
  ¬,, ◿₂ °⊏     # Mask even and odd positions
  ∩(ScanMoves▽) # Santa and Robo-Santa team up
  CountUnique⊂  # Count unique
)
