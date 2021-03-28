# TSSM-Dolphin-Watchlist
Dolphin memory watch files for The SpongeBob SquarePants Movie. They label notable memory addresses which may be useful for debugging and speedrunning strat hunting/practice.

Memory locations vary depending which version of the game is used; I plan to update the repository with more versions.

Example use cases:
- Practising two-frame token warps by reading the Token Count (token counter increments when the loading screen appears after warping)
- Practising one-frame damage boosts by locking Patrick/SpongeBob's health in the memory engine.

## How to Use
1. Download [Dolphin Memory Engine](https://github.com/aldelaro5/Dolphin-memory-engine/releases)
2. Clone/download this repository.
3. In Dolphin Memory Engine, go to `File > Open` and open the correct .dmw for your game ID.

If you don't know your game ID:
- NTSC (English): `GGVE78`
- PAL (English): `GGVP78`
- PAL (Deutsch): `GGVD78`
- PAL (Français/Nederlands): `GGVX78`
4. Open the game in Dolphin.

## Memory Address Descriptions

| Label | Description |
|-------|-------------|
|Game ID|Game's ID.<br />`G` - System Code (GameCube)<br />`GV` - Title Code (The SpongeBob SquarePants Movie)<br />`E`/`P`/`D`/`X` - Region Code (Varies)<br />`78` - Publisher Code (THQ)|
|SpongeBob Health|The health SpongeBob has remaining.|
|SpongeBob Max Health|SpongeBob's maximum health.|
|Patrick Health|The health Patrick has remaining.|
|Patrick Max Health|Patrick's maximum health.|
|Sliding/Driving Health|The health remaining when sliding or driving.
|Sliding/Driving Max Health|The maximum health when sliding or driving.<br />Setting this to values above `3` will update the UI, but you won't gain extra lives as the game is hardcoded to three lives in these levels.
|Manliness Points|The manliness points collected.<br />The in-game UI lags behind the true count—after collecting manlies, the UI element will count up towards the actual value.
|Token Count|The number of tokens currently collected.|
|Extras Count|The number of extras currently collected.|
|Upgrade Points|The number of upgrade points remaining.<br />Values above `30` are displayed as "0" in the upgrade menu.|
|Player is Jumping|Whether the player is performing a single-jump.<br />It is possible for this value to be `0` when double jumping, if the player jumps after falling off a ledge after the game's ~30 frames coyote time.|
|Player is Double Jumping|Whether the player is double jumping.|
|Player is Spinning|Whether the player is using the star spin/karate spin.|
|Player is Bashing (SB)|Whether the player is using the bash attack.|
|Player is Bowling (SB)|Whether the player is using the sponge bowl.|
|Bowl Electricity Effect Active|Whether the electricity effect is active during the upgraded sponge bowl's explode animation.|
|Bowl Warping Effect Active|Whether the warping effect is active during the upgraded sponge bowl's explode animation. <br />While normally `1` during explosion, it can be `0` if the ball explodes behind the camera or in a place where the ball isn't visible.