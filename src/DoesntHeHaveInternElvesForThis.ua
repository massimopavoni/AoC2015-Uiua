~ "RandomUtils/Split.ua" ~ LinesF!
~ "RandomUtils/Regex.ua" ~ R

# Doesn't He Have Intern-Elves For This?

# ------------------------------------------------------------------------------------------------
# Exports

NiceStringsCount ← /+ LinesF!(
  ×× ⊃(
    ≥₃/+ ∈"aeiou"                  # At least 3 vowels
  | ≠₁⊣⍆ ⊜⧻. utf₈                  # At least 1 letter that appears twice in a row
  | =₀ /+ ⧈(∈"ab"_"cd"_"pq"_"xy")2 # No forbidden substrings
  )
)

BetterNiceStringsCount ← /+ LinesF!(
  × ⊃(
    ◴ ⊃(⧈∘2|¤)      # Non-overlapping pairs
    ⊞(⧻ R$"_.*?_".) # Match on original string
    ≠₀ ⊢/+          # At least two pairs
  | ≥₁ /+ ⧈(= ⊃⊢⊣)3 # At least one letter repeated with a letter in between
  )
)
