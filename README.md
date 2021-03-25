# TSSM-Dolphin-Watchlist
Dolphin memory watch files for The SpongeBob SquarePants Movie. They label notable memory addresses which may be useful for debugging and speedrunning strat hunting/practice.

Memory locations vary depending which version of the game is used; I plan to update the repository with more versions.

Example use cases:
- Practising two-frame token warps by reading the Token Count (token counter increments when the loading screen appears after warping)
- Practising one-frame damage boosts by locking Patrick/SpongeBob's health in the memory engine.

## How to Use
1. Download [Dolphin Memory Engine](https://github.com/aldelaro5/Dolphin-memory-engine/releases)
2. Clone/download this repository.
3. In Dolphin Memory Engine, go to `File > Open` and open the correct .dmw for your game version.
4. Open the game in Dolphin.

## Memory Address Descriptions

| Label | Description |
|-------|-------------|
|Game ID|Game's ID.<br />G - System Code (GameCube)<br />GV - Title Code (The SpongeBob SquarePants Movie)<br />E/P/D/X - Region Code (Varies)<br />78 - Publisher Code (THQ)|
|SpongeBob Health|The health SpongeBob has remaining.|
|Patrick Health|The health Patrick has remaining.|
|Sliding/Driving Health|The health remaining when driving or sliding.|
|Manliness Points|The manliness points collected.<br />Note: The in-game UI lags behind the true count—after collecting manlies, the UI element will count up towards the actual value.
|Token Count|The number of tokens currently collected.|
|Extras Count|The number of extras currently collected.|
|Upgrade Points|The number of upgrade points remaining.|
