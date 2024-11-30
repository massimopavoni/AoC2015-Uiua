# Random Utils/Split

# Apply function on array split by delimiter
# Elems ? Function Delimiter Array
SplitF! ← ⊜^0 ⊸≠

# Apply function on string split by space
# Elems ? Function Delimiter String
WordsF! ← SplitF!^0 @ 

# Apply function on string split by newline
# Elems ? Function String
LinesF! ← SplitF!^0 @\n

# Split string by newline, inverse intersperses newlines
# Elems ? String
Lines ← ⌅(
  LinesF!□
| /$"_\n_" # Inverse intersperse newline
)
