# Experimental!

# The Ideal Stocking Stuffer

# Functions

MD₅ ↚ (
  # Null pointer for result buffer
  {⊙(□NULL)}
  &ffi {
    "/usr/lib/libcrypto.so"
    "unsigned char*" # result
    "MD5"
    "const unsigned char :1" # data
    "unsigned long"          # data length
    "const unsigned char*"   # result buffer
  }
  ⟜(&memcpy "unsigned char":16) # Get result array
  &memfree
  ⍜⇌/⊂ base 16 # Convert to hex array
)

FindNonce! ↚ (
  ⍢(+1)(
    MD₅ ⊂:°⋕  # Append nonce candidate and hash
    ≠0 /+ ↙^0 # Check hash for n leading zeroes
  ) 0
  ⊙◌
)

# Exports

FindNonce₅ ← FindNonce!5

FindNonce₆ ← FindNonce!6
