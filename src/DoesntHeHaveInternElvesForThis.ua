~ "RandomUtils.ua" ~ LinesF!

# Doesn't He Have Intern-Elves For This?

# Exports

NiceStringsCount ← /+ LinesF!(
  ×× ⊃(
    ≥3/+ ∈"aeiou"                  # At least 3 vowels
  | ≠1⊣⍆ ⊜⧻. utf₈                  # At least 1 letter that appears twice in a row
  | =0/+ ∈["ab" "cd" "pq" "xy"] ◫2 # No forbidden substrings
  )
)

BetterNiceStringsCount ← /+ LinesF!(
  × ⊃(
    ◴ ⊃(◫2|¤)           # Non-overlapping pairs
    ⊞(⧻ regex$"_.*_" .) # Match on original string
    ≠0 ⊢/+              # At least two pairs
  | ≥1 /+ ≡(= ⊃⊢⊣) ◫3   # At least one letter repeated with a letter in between
  )
)
