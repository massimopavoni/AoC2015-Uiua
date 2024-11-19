# Perfectly Spherical Houses In A Vacuum

# Parsers

ElfDirections ↚ (
  ⊗:"^v><"                 # Arrow indices
  ≡(⊡:[1_0 ¯1_0 0_1 0_¯1]) # Cardinal moves
)

# Functions

SI ↚ \+ ⊂(0_0) # Scan instructions

CU ↚ /+ ◰ # Count unique

# Exports

UniqueHouses ← (
  ElfDirections
  SI
  CU # Count unique
)

RoboSantaUniqueHouses ← (
  ElfDirections
  ¬,, ◿2 °⊏ # Mask even and odd positions
  ∩(SI▽)    # Santa and Robo-Santa team up
  CU ⊂      # Count unique
)
