# Random Utils

# Split array by delimiter and apply function on elements
# Elems ? Function Delimiter Array
SB! ← ⊜^0 ⊸≠

# Split string by newline and apply function on elements
# Elems ? Function String
LF! ← SB!^0 @\n

# Split string by newline, inverse intersperses newlines
# Elems ? String
Lines ← ⌅(
  LF!□
| /$"_\n_" # Inverse intersperse newline
)
