# Experimental!

~ "RandomUtils/Split.ua" ~ LinesF! WordsF!
~ "NotQuiteLisp.ua" ~ FinalFloor WhenBasement
~ "IWasToldThereWouldBeNoMath.ua" ~ TotalRibbon TotalWrappingPaper
~ "PerfectlySphericalHousesInAVacuum.ua" ~ RoboSantaUniqueHouses UniqueHouses
~ "TheIdealStockingStuffer.ua" ~ FindNonce₅ FindNonce₆
~ "DoesntHeHaveInternElvesForThis.ua" ~ BetterNiceStringsCount NiceStringsCount
~ "ProbablyAFireHazard.ua" ~ SantaLightsBrightness SantaLightsOn
~ "SomeAssemblyRequired.ua" ~ OverriddenWireASignal WireASignal

# ------------------------------------------------------------------------------------------------
# Resources

Resources ← comptime(
  # Read resource files
  &fld "src/resources"
  ⟜≡⍜°□&fras
  # Map filenames to contents
  ≡(□⊙◌ °$"src/resources/_._")
  map
)

GetResource ← °□ get:Resources

PuzzleAnswers ← comptime(
  # Read puzzle answers
  GetResource "PuzzleAnswers"
  # Separate strings
  LinesF!(
    WordsF!□
  )
  # Prepare keys
  ⍜⍉°⊂
  # Create map
  map
)

# ------------------------------------------------------------------------------------------------
# Functions

PrettySolution‼! ← (
  # Solve problem
  $"_" ^2 GetResource ^0
  # Compose message (keep solution)
  ⟜($"_ -> _" ^1)
  # Get puzzle answer from hashmap
  ⊡(-₁ ^1) get ^0 PuzzleAnswers
  # Check for correctness (keep solution)
  ⊃⊙∘= ⊙□
  # Assert correctness
  ⍤($"Wrong solution for _ part _: expected _, but got _" ^0 ^1)
)

PrettySolution₂‼‼ ← (
  # Day
  &p $"Day _: _" ^0 ^1
  # Part 1
  &p PrettySolution‼!^1 1 ^2
  # Part 2 if not Christmas
  =₂₅ ^0
  ⨬(&p PrettySolution‼!^1 2 ^3
  | )
  &p ""
)

# ------------------------------------------------------------------------------------------------
# Exports

# Print solutions one day at a time
&p $ AoC 2015 - Uiua
   $ 
PrettySolution₂‼‼1 "NotQuiteLisp" FinalFloor WhenBasement
PrettySolution₂‼‼2 "IWasToldThereWouldBeNoMath" TotalWrappingPaper TotalRibbon
PrettySolution₂‼‼3 "PerfectlySphericalHousesInAVacuum" UniqueHouses RoboSantaUniqueHouses
PrettySolution₂‼‼4 "TheIdealStockingStuffer" FindNonce₅ FindNonce₆
PrettySolution₂‼‼5 "DoesntHeHaveInternElvesForThis" NiceStringsCount BetterNiceStringsCount
PrettySolution₂‼‼6 "ProbablyAFireHazard" SantaLightsOn SantaLightsBrightness
PrettySolution₂‼‼7 "SomeAssemblyRequired" WireASignal OverriddenWireASignal
