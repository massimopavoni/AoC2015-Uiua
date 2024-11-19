# Experimental!

~ "RandomUtils.ua" ~ Lines
~ "NotQuiteLisp.ua" ~ FinalFloor WhenBasement
~ "IWasToldThereWouldBeNoMath.ua" ~ TotalRibbon TotalWrappingPaper
~ "PerfectlySphericalHousesInAVacuum.ua" ~ RoboSantaUniqueHouses UniqueHouses

PrettySolution‼‼ ← (
  # Solve problem
  ^2 &fras $"src/resources/_.in" ^1
  # Compose message (keep solution)
  ⟜($"_. _ -> _" ^0 ^1)
  # Check for correctness (keep solution)
  ⟜(=^3)
  # Assert correctness
  ⍤($"Wrong solution for _ part _: expected _, but got _" ^1 ^0 ^3)
)

PrettySolution₂‼‼! ← (
  PrettySolution‼‼2 ^0 ^3 ^4
  PrettySolution‼‼1 ^0 ^1 ^2
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
  PrettySolution₂‼‼!"NotQuiteLisp" FinalFloor 232 WhenBasement 1783
  PrettySolution₂‼‼!"IWasToldThereWouldBeNoMath" TotalWrappingPaper 1586300 TotalRibbon 3737498
  PrettySolution₂‼‼!"PerfectlySphericalHousesInAVacuum" UniqueHouses 2592 RoboSantaUniqueHouses 2360
}
