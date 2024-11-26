# Experimental!

~ "RandomUtils.ua" ~ Lines LinesF! WordsF!
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
  ⊙∵⋕
  # Create map
  map
)

PrettySolution‼! ← (
  # Solve problem
  ^2 GetResource ^1
  # Compose message (keep solution)
  ⟜($"_. _ -> _" ^0 ^1)
  # Get puzzle answer from hashmap
  ⊡(-1^0) get ^1 PuzzleAnswers
  # Check for correctness (keep solution)
  ⊃⊙∘=
  # Assert correctness
  ⍤($"Wrong solution for _ part _: expected _, but got _" ^1 ^0)
)

PrettySolution₂‼! ← (
  PrettySolution‼!2 ^0 ^2
  PrettySolution‼!1 ^0 ^1
  $"_\n_\n"
)

# Print solutions one day at a time
&p $ AoC 2015 - Uiua
   $ 
&p (
  +1°⊏
  ≡(□$"Day _\n_")
  °Lines
) {
  PrettySolution₂‼!"NotQuiteLisp" FinalFloor WhenBasement
  PrettySolution₂‼!"IWasToldThereWouldBeNoMath" TotalWrappingPaper TotalRibbon
  PrettySolution₂‼!"PerfectlySphericalHousesInAVacuum" UniqueHouses RoboSantaUniqueHouses
  PrettySolution₂‼!"TheIdealStockingStuffer" FindNonce₅ FindNonce₆
  PrettySolution₂‼!"DoesntHeHaveInternElvesForThis" NiceStringsCount BetterNiceStringsCount
  PrettySolution₂‼!"ProbablyAFireHazard" SantaLightsOn SantaLightsBrightness
}
