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

<table>
<thead>
<tr>
<th>Label</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>Game ID</td>
<td>Game's ID.<br /><code>G</code> - System Code (GameCube)<br /><code>GV</code> - Title Code (The SpongeBob SquarePants Movie)<br /><code>E</code>/<code>P</code>/<code>D</code>/<code>X</code> - Region Code (Varies)<br /><code>78</code> - Publisher Code (THQ)</td>
</tr>
<tr>
<th colspan="2">Abilities/Upgrades</th>
<tr>
<td>Karate Spin</td>
<td>Unlock/upgrade status of Karate Spin.<br /><code>0</code> = locked, <code>1</code> = unlocked, <code>2</code> = upgraded (applies to all moves below).</td>
</tr>
<tr>
<td>Bash</td>
<td>Unlock/upgrade status of Bash.</td>
</tr>
<tr>
<td>Spongebowl</td>
<td>Unlock/upgrade status of Spongebowl.</td>
</tr>
<tr>
<td>Sonic Wave</td>
<td>Unlock/upgrade status of Sonic Wave.</td>
</tr>
<tr>
<td>Star Spin</td>
<td>Unlock/upgrade status of Star Spin.</td>
</tr>
<tr>
<td>Cartwheel</td>
<td>Unlock/upgrade status of Cartwheel.</td>
</tr>
<tr>
<td>Smash</td>
<td>Unlock/upgrade status of Smash.</td>
</tr>
<tr>
<td>Throw</td>
<td>Unlock/upgrade status of Throw.</td>
</tr>
<tr>
<td>SpongeBob Health Upgrades</td>
<td>The number of health upgrades SpongeBob has.</td>
</tr>
<tr>
<td>Patrick Health Upgrades</td>
<td>The number of health upgrades Patrick has.</td>
</tr>
<tr>
<th colspan="2">Health</th>
</tr>
<tr>
<td>SpongeBob Health</td>
<td>The health SpongeBob has remaining.</td>
</tr>
<tr>
<td>SpongeBob Max Health</td>
<td>SpongeBob's maximum health.<br />Calculated from <code>3</code> + the number of health upgrades. Updates after SpongeBob dies.</td>
</tr>
<tr>
<td>Patrick Health</td>
<td>The health Patrick has remaining.</td>
</tr>
<tr>
<td>Patrick Max Health</td>
<td>Patrick's maximum health.<br />Calculated from <code>3</code> + the number of health upgrades. Updates after Patrick dies.</td>
</tr>
<tr>
<td>Sliding/Driving Health</td>
<td>The health remaining when sliding or driving.</td>
</tr>
<tr>
<td>Sliding/Driving Max Health</td>
<td>The maximum health when sliding or driving.<br />Setting this to values above <code>3</code> will update the UI, but you won't gain extra lives as the game is hardcoded to three lives in these levels.</td>
</tr>
<tr>
<th colspan="2">Player States</th>
</tr>
<tr>
<td>Player is Jumping</td>
<td>Whether the player is performing a single-jump.<br />It is possible for this value to be <code>0</code> when double jumping, if the player jumps after falling off a ledge after the game's ~30 frames coyote time.</td>
</tr>
<tr>
<td>Player is Double Jumping</td>
<td>Whether the player is double jumping.</td>
</tr>
<tr>
<td>Player is Spinning</td>
<td>Whether the player is using the star spin/karate spin.</td>
</tr>
<tr>
<td>Player is Bashing (SB)</td>
<td>Whether the player is using the bash attack.</td>
</tr>
<tr>
<td>Player is Bowling (SB)</td>
<td>Whether the player is using the sponge bowl.</td>
</tr>
<tr>
<td>Player Is In Source Box (Box State)</td>
<td>Whether the player is standing in a warp box prior to being teleported.<br />This byte is responsible for "box state glitch", wherein you cannot take damage from enemies or goo, and you are unable to use certain abilities. You can activate the glitch by warping in a source box while the target box is unopened, or by locking this value to <code>1</code>.</td>
</tr>
<tr>
<th colspan="2">Collectibles</th>
</tr>
<tr>
<td>Manliness Points</td>
<td>The manliness points collected.<br />The in-game UI lags behind the true count—after collecting manlies, the UI element will count up towards the actual value.</td>
</tr>
<tr>
<td>Token Count</td>
<td>The number of tokens currently collected.</td>
</tr>
<tr>
<td>Extras Count</td>
<td>The number of extras currently collected.</td>
</tr>
<tr>
<td>Upgrade Points</td>
<td>The number of upgrade points remaining.<br />Values above <code>30</code> are displayed as "0" in the upgrade menu.</td>
</tr>
<tr>
<th colspan="2">Camera</th>
</tr>
<tr>
<td>Camera is Zoomed In</td>
<td>Whether the camera is in the zoomed in state.</td>
</tr>
<tr>
<th colspan="2">Miscellaneous</th>
</tr>
<tr>
<td>Bowl Electricity Effect Active</td>
<td>Whether the electricity effect is active during the upgraded sponge bowl's explode animation.</td>
</tr>
<tr>
<td>Bowl Aura Effect Active</td>
<td>Whether the aura sphere is active during the upgraded sponge bowl's explode animation. <br />Locking this to <code>1</code> will show the location of the last ball explosion. Appears to always be reset to <code>0</code> after warping. If enabled after warping, the aura location will be at the map's origin (0,0,0).</td>
</tr>
<tr>
<td>Bowl Warping Effect Active</td>
<td>Whether the warping effect is active during the upgraded sponge bowl's explode animation. <br />While normally <code>1</code> during explosion, it can be <code>0</code> if the ball explodes behind the camera or in a place where the ball isn't visible.</td>
</tr>
</tbody>
</table>

## TODO
- Find player x,y,z location (not static addresses), part of PLYR asset?
- Boss healths