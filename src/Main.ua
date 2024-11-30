# Experimental!

~ "RandomUtils/Split.ua" ~ LinesF! WordsF!
~ "NotQuiteLisp.ua" ~ FinalFloor WhenBasement
~ "IWasToldThereWouldBeNoMath.ua" ~ TotalRibbon TotalWrappingPaper
~ "PerfectlySphericalHousesInAVacuum.ua" ~ RoboSantaUniqueHouses UniqueHouses
~ "TheIdealStockingStuffer.ua" ~ FindNonce₅ FindNonce₆
~ "DoesntHeHaveInternElvesForThis.ua" ~ BetterNiceStringsCount NiceStringsCount
~ "ProbablyAFireHazard.ua" ~ SantaLightsBrightness SantaLightsOn

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
  # Prepare keys, parse integers
  ⍜⍉°⊂
  ⊙≡⋕
  # Create map
  map
)

PrettySolution‼! ← (
  # Solve problem
  ^2 GetResource ^1
  # Compose message (keep solution)
  ⟜($"_. _ -> _" ^0 ^1)
  # Get puzzle answer from hashmap
  ⊡(-₁ ^0) get ^1 PuzzleAnswers
  # Check for correctness (keep solution)
  ⊃⊙∘=
  # Assert correctness
  ⍤($"Wrong solution for _ part _: expected _, but got _" ^1 ^0)
)

PrettySolution₂‼‼ ← (
  # Day
  &p $"Day _" ^0
  # Part 1
  &p PrettySolution‼!1 ^1 ^2
  # Part 2 if not Christmas
  =₂₅ ^0
  ⨬(&p PrettySolution‼!2 ^1 ^3
  | &pf"")
  &p ""
)

# Print solutions one day at a time
&p $ AoC 2015 - Uiua
   $ 
PrettySolution₂‼‼1 "NotQuiteLisp" FinalFloor WhenBasement
PrettySolution₂‼‼2 "IWasToldThereWouldBeNoMath" TotalWrappingPaper TotalRibbon
PrettySolution₂‼‼3 "PerfectlySphericalHousesInAVacuum" UniqueHouses RoboSantaUniqueHouses
PrettySolution₂‼‼4 "TheIdealStockingStuffer" FindNonce₅ FindNonce₆
PrettySolution₂‼‼5 "DoesntHeHaveInternElvesForThis" NiceStringsCount BetterNiceStringsCount
PrettySolution₂‼‼6 "ProbablyAFireHazard" SantaLightsOn SantaLightsBrightness
