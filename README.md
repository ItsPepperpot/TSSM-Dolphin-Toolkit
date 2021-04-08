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
<tr>
<th colspan="2">Controller Input</th>
<tr>
<td>Buttons pressed (Bit field)</td>
<td>A two-byte bit field containing the state of the buttons pressed on the controller.<br /><br />
Bit 15 → Bit 0<br />
<code>00000000</code> <code>00000000</code><br />
<table>
<thead>
<tr>
<th>Bit</th><th>Button Press</th>
</tr>
</thead>
<tbody>
<tr>
<td>15</td><td>Unsure (controller disconnected?)</td>
</tr>
<tr>
<td>14</td><td>Unsure (unused?)</td>
</tr>
<tr>
<td>13</td><td>Unsure (unused?)</td>
</tr>
<tr>
<td>12</td><td>START</td>
</tr>
<tr>
<td>11</td><td>Y</td>
</tr>
<tr>
<td>10</td><td>X</td>
</tr>
<tr>
<td>9</td><td>B</td>
</tr>
<tr>
<td>8</td><td>A</td>
</tr>
<tr>
<td>7</td><td>Unsure (controller connected?)</td>
</tr>
<tr>
<td>6</td><td>L</td>
</tr>
<tr>
<td>5</td><td>R</td>
</tr>
<tr>
<td>4</td><td>Z</td>
</tr>
<tr>
<td>3</td><td>Up</td>
</tr>
<tr>
<td>2</td><td>Down</td>
</tr>
<tr>
<td>1</td><td>Right</td>
</tr>
<tr>
<td>0</td><td>Left</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td>Main Stick X</td>
<td>X position of the main analog stick.<br />
<code>0</code>–<code>255</code>, center is <code>128</code> (applies to all analog stick axes).</td>
</tr>
<tr>
<td>Main Stick Y</td>
<td>Y position of the main analog stick.
</tr>
<tr>
<td>C Stick X</td>
<td>X position of the C stick.
</tr>
<tr>
<td>C Stick Y</td>
<td>Y position of the C stick.
</tr>
<tr>
<td>Left Shoulder Button</td>
<td>How pressed the left shoulder button is.<br />
<code>0</code> (unpressed)–<code>255</code> (fully pressed) (applies to both shoulder buttons.)
</tr>
<tr>
<td>Right Shoulder Button</td>
<td>How pressed the right shoulder button is.
</tr>
<tr>
<th colspan="2">Abilities/Upgrades</th>
</tr>
<tr>
<td>Karate Spin</td>
<td>Unlock/upgrade status of Karate Spin.<br /><code>0</code> = locked, <code>1</code> = unlocked, <code>2</code> = upgraded (applies to all moves below).<br />
Can be set in SB04.ini with <code>G.KarateSpin</code>.
</td>
</tr>
<tr>
<td>Bash</td>
<td>Unlock/upgrade status of Bash.<br />
Can be set in SB04.ini with <code>G.Bash</code>.</td>
</tr>
<tr>
<td>Spongebowl</td>
<td>Unlock/upgrade status of Spongebowl.<br />
Can be set in SB04.ini with <code>G.MachoBowl</code>.</td>
</tr>
<tr>
<td>Sonic Wave</td>
<td>Unlock/upgrade status of Sonic Wave.<br />
Can be set in SB04.ini with <code>G.WaveGuitar</code>.</td>
</tr>
<tr>
<td>Star Spin</td>
<td>Unlock/upgrade status of Star Spin.<br />
Can be set in SB04.ini with <code>G.BellyBump</code>.</td>
</tr>
<tr>
<td>Cartwheel</td>
<td>Unlock/upgrade status of Cartwheel.<br />
Can be set in SB04.ini with <code>G.Cartwheel</code>.</td>
</tr>
<tr>
<td>Smash</td>
<td>Unlock/upgrade status of Smash.<br />
Can be set in SB04.ini with <code>G.BellyFlop</code>.</td>
</tr>
<tr>
<td>Throw</td>
<td>Unlock/upgrade status of Throw.<br />
Can be set in SB04.ini with <code>G.Throw</code>.</td>
</tr>
<tr>
<td>SpongeBob Health Upgrades</td>
<td>The number of health upgrades SpongeBob has.<br />
Can be set in SB04.ini with <code>G.HealthSB</code>. While usually capped at 3 in-game, you can set this value higher to give SpongeBob more health (though the UI will only display a max of 6 Krabby Patties).</td>
</tr>
<tr>
<td>Patrick Health Upgrades</td>
<td>The number of health upgrades Patrick has.<br />
Can be set in SB04.ini with <code>G.HealthPat</code>.</td>
</tr>
<tr>
<th colspan="2">Manliness Point Values</th>
</tr>
<tr>
<td>Purple Manliness Value</td>
<td>The value of a purple manliness point.<br />
Default is <code>50</code>, can be set in SB04.ini with <code>G.ShinyValuePurple</code>.
</td>
</tr>
<tr>
<td>Blue Manliness Value</td>
<td>The value of a blue manliness point.<br />
Default is <code>10</code>, can be set in SB04.ini with <code>G.ShinyValueBlue</code>.</td>
</tr>
<tr>
<td>Green Manliness Value</td>
<td>The value of a green manliness point.<br />
Default is <code>5</code>, can be set in SB04.ini with <code>G.ShinyValueGreen</code>.</td>
</tr>
<tr>
<td>Yellow Manliness Value</td>
<td>The value of a yellow manliness point.<br />
Default is <code>2</code>, can be set in SB04.ini with <code>G.ShinyValueYellow</code>.</td>
</tr>
<tr>
<td>Red Manliness Value</td>
<td>The value of a red manliness point.<br />
Default is <code>1</code>, can be set in SB04.ini with <code>G.ShinyValueRed</code>.</td>
</tr>
<tr>
<th colspan="2">Upgrade Manliness Requirements</th>
</tr>
<tr>
<td colspan="2">The manliness points required to gain the next upgrade point. The values in memory are cumulative (250, 1500, 3000, ..., 35000) whereas the values set in SB04.ini are incremental (250, 1250, 1500, ..., 4000).</td>
</tr>
<tr>
<td>Upgrades 1-14</td>
<td>
<table>
<thead>
<tr>
<th>Watch Name</th>
<th>Normal Value</th>
<th>SB04.ini</th>
</tr>
</thead>
<tbody>
<tr>
<td>Upgrade 1</td>
<td>250</td>
<td><code>Upgrade1 = 250</code></td>
</tr>
<tr>
<td>Upgrade 2</td>
<td>1500</td>
<td><code>Upgrade2 = 1250</code></td>
</tr>
<tr>
<td>Upgrade 3</td>
<td>3000</td>
<td><code>Upgrade3 = 1500</code></td>
</tr>
<tr>
<td>Upgrade 4</td>
<td>5000</td>
<td><code>Upgrade4 = 2000</code></td>
</tr>
<tr>
<td>Upgrade 5</td>
<td>7000</td>
<td><code>Upgrade5 = 2000</code></td>
</tr>
<tr>
<td>Upgrade 6</td>
<td>9000</td>
<td><code>Upgrade6 = 2000</code></td>
</tr>
<tr>
<td>Upgrade 7</td>
<td>11000</td>
<td><code>Upgrade7 = 2000</code></td>
</tr>
<tr>
<td>Upgrade 8</td>
<td>14000</td>
<td><code>Upgrade8 = 3000</code></td>
</tr>
<tr>
<td>Upgrade 9</td>
<td>17000</td>
<td><code>Upgrade9 = 3000</code></td>
</tr>
<tr>
<td>Upgrade 10</td>
<td>20000</td>
<td><code>Upgrade10 = 3000</code></td>
</tr>
<tr>
<td>Upgrade 11</td>
<td>23000</td>
<td><code>Upgrade11 = 3000</code></td>
</tr>
<tr>
<td>Upgrade 12</td>
<td>27000</td>
<td><code>Upgrade12 = 4000</code></td>
</tr>
<tr>
<td>Upgrade 13</td>
<td>31000</td>
<td><code>Upgrade13 = 4000</code></td>
</tr>
<tr>
<td>Upgrade 14</td>
<td>35000</td>
<td><code>Upgrade14 = 4000</code></td>
</tr>
</tbody>
</table>
</td>
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
<th colspan="2">Movement</th>
</tr>
<tr>
<td>SB Min Walk Speed</td>
<td>SpongeBob's minimum walk speed. Normally <code>0.6</code>.</td>
</tr>
<tr>
<td>SB Max Walk Speed</td>
<td>SpongeBob's maximum walk speed. Normally <code>4</code>.</td>
</tr>
<tr>
<td>SB Max Run Speed</td>
<td>SpongeBob's max running speed, i.e. top theoretical speed when the analog stick is fully deflected. Normally <code>5</code>.</td>
</tr>
<tr>
<td>SB Jump Gravity</td>
<td>Affects the height of SpongeBob's jumps. Normally <code>5</code>.<br />
Can be set in SB04.ini with <code>SB.JumpGravity</code>.</td>
</tr>
<tr>
<td>Sliding Friction (Ice Physics Glitch)</td>
<td>Appears to affect friction when sliding, default is <code>0</code>. Also responsible for Ice Physics Glitch (IPG).<br />
IPG refers to the decreased friction on certain surfaces caused by this value being <code>0</code>. This value is set to <code>0.01</code> if the player touches a flinger's goo, or <code>0.2</code> when walking on freezy fruit ice.<br />Losing IPG is generally undesirable as the player will lose all their speed when landing on <em>some</em> icy surfaces (e.g. SCDA Floating Block ice blocks or the I'm Ready... Depression freezer room).<br />
The value is not normally reset to <code>0</code>, even when exiting to main menu, so the console/game must be reset or the reduced ice speed persists.
</tr>
</tr>
<tr>
<th colspan="2">Last Grounded Position</th>
</tr>
<tr>
<td colspan="2">When the player falls off a ledge into a damage source (e.g. goo or spikes), the player will typically be bounced back to their last grounded position within a certain range.<br />
This value is constantly updated with the player's current position, however, if the player jumps very quickly within landing (TODO: add frame window?) or jumps on the very edge of a platform, this position won't be updated, allowing the player to bounce back to a position of their choice.<br />
Speedrunners can abuse this fact to skip token animations by dying and bouncing into a token simultaneously.
</td>
</tr>
<tr>
<td>Last Grounded X Position</td>
<td>The player's last grounded X coordinate.</td>
</tr>
<tr>
<td>Last Grounded Y Position</td>
<td>The player's last grounded Y coordinate.</td>
</tr>
<tr>
<td>Last Grounded Z Position</td>
<td>The player's last grounded Z coordinate.</td>
</tr>
<tr>
<th colspan="2">Player Position Duplicate (Read-Only)</th>
</tr>
<tr>
<td colspan="2">The following contains memory addresses that are continuously updated with the player's position. They do not contain the actual internal position of the player, and writing to these addresses will not change the player's position. The actual player position's addresses are dynamic and change each level, but these are useful for the sake of reference.</td>
</tr>
<tr>
<td>X Position</td>
<td>The player's current X coordinate.</td>
</tr>
<tr>
<td>Y Position</td>
<td>The player's current Y coordinate.</td>
</tr>
<tr>
<td>Z Position</td>
<td>The player's current Z coordinate.</td>
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
<td>Camera X Position</td>
<td>The camera's X coordinate.</td>
</tr>
<tr>
<td>Camera Y Position</td>
<td>The camera's Y coordinate.</td>
</tr>
<tr>
<td>Camera Z Position</td>
<td>The camera's Z coordinate.</td>
</tr>
<tr>
<td>Camera Roll</td>
<td>The camera's roll. TODO: Add units</td>
</tr>
<tr>
<th colspan="2">Damage</th>
</tr>
<tr>
<td>Player Can Take Damage</td>
<td>Whether the player can take damage.<br />
Can be set in SB04.ini with <code>G.TakeDamage</code>.</td>
</tr>
<tr>
<td>Damage Delay Timer</td>
<td>The number of seconds after being hit before able to take damage.<br />
Can be set in SB04.ini with <code>G.DamageTimeHit</code>.</td>
</tr>
<tr>
<th colspan="2">Options</th>
</tr>
<tr>
<td colspan="2">The values set in the options menu. All are <code>0</code> by default until the options menu is opened for the first time.</td>
</tr>
<tr>
<td>Rumble Feature</td>
<td>Whether the user has set the rumble feature to be enabled.<br />Note that this is not the value that determines if rumble is active (see <a href="#vibration-enabled">Vibration Enabled</a>)</td>
</tr>
<tr>
<td>Music Volume</td>
<td>The setting for music volume.</td>
</tr>
<tr>
<td>Sound Effects Volume</td>
<td>The setting for sound effects volume.</td>
</tr>
<tr>
<th colspan="2">Watermark</th>
</tr>
<tr>
<td colspan="2">The watermark is an in-game text overlay. While usually empty, it can be added by adding <code>Watermark = [Your text here...]</code> to SB04.ini or by setting the Watermark Text in Dolphin Memory Engine.</td>
</tr>
<tr>
<td>Watermark Text</td>
<td>The watermark text.<br />
Variables can also be shown in the watermark, with the syntax <code>{var:VariableName}</code>.
</td>
</tr>
<tr>
<td>Watermark Alpha</td>
<td>The watermark alpha (opacity).<br />
Between <code>0</code> and <code>255</code>, default is <code>48</code>. Can be set in SB04.ini with <code>WatermarkAlpha</code>.<br />
</td>
</tr>
<tr>
<td>Watermark Size</td>
<td>The watermark's size.<br />
Default is <code>40</code>. Can be set in SB04.ini with <code>WatermarkSize</code>.<br />
</td>
</tr>
<tr>
<th colspan="2">TEXT Variables</th>
</tr>
<tr>
<td colspan="2">Strings that can be used in TEXT assets. Can be used with <code>{var:VariableName}</code>. Many are used by UI elements in-game. Note that, in memory, these strings are all empty by default and only update when queried. TODO: Add descriptions here</td>
</tr>
<tr>
<td>BadCard</td>
<td></td>
</tr>
<tr>
<td>BadCardAvailable</td>
<td></td>
</tr>
<tr>
<td>BadCardNeeded</td>
<td></td>
</tr>
<tr>
<td>GameSlot0</td>
<td></td>
</tr>
<tr>
<td>GameSlot1</td>
<td></td>
</tr>
<tr>
<td>GameSlot2</td>
<td></td>
</tr>
<tr>
<td>GameSlot3</td>
<td></td>
</tr>
<tr>
<td>GameSlot4</td>
<td></td>
</tr>
<tr>
<td>GameSlot5</td>
<td></td>
</tr>
<tr>
<td>GameSlot6</td>
<td></td>
</tr>
<tr>
<td>GameSlot7</td>
<td></td>
</tr>
<tr>
<td>SpaceAvailable</td>
<td></td>
</tr>
<tr>
<td>SpaceAvailableString</td>
<td></td>
</tr>
<tr>
<td>SpaceNeeded</td>
<td></td>
</tr>
<tr>
<td>MCMaxSpace</td>
<td></td>
</tr>
<tr>
<td>MCMinSpace</td>
<td></td>
</tr>
<tr>
<td>ActivePad</td>
<td></td>
</tr>
<tr>
<td>CurrentDate</td>
<td></td>
</tr>
<tr>
<td>CurrentTime</td>
<td></td>
</tr>
<tr>
<td>PlayerPosition</td>
<td></td>
</tr>
<tr>
<td>SoundMusicVolume</td>
<td></td>
</tr>
<tr>
<td>SoundFXVolume</td>
<td></td>
</tr>
<tr>
<td>NumChestsNeeded</td>
<td></td>
</tr>
<tr>
<td>NumChestsCurrentLevel</td>
<td></td>
</tr>
<tr>
<td>NumChestsTotalCurrentLevel</td>
<td></td>
</tr>
<tr>
<th colspan="2">Miscellaneous</th>
</tr>
<tr>
<td>Boot HIP File</td>
<td>The first area to load when starting a new game.<br />
Must be set in SB04.ini using <code>BOOT</code>, default is <code>BB02</code> (No Cheese!). If not set, the game will crash attempting to load the first level.</td>
</tr>
<tr>
<td name="vibration-enabled" id="vibration-enabled">Vibration Enabled</td>
<td>Whether the vibration setting is enabled.<br />
Default is <code>1</code>, though can be changed in SB04.ini with <code>option_vibration</code>. Toggling the Rumble Feature in options will override this value.</td>
</tr>
<tr>
<td>Music Disabled</td>
<td>Whether the music is disabled.<br />
Default is <code>0</code>. Can be set in SB04.ini with <code>NoMusic</code>.</td>
</tr>
<td>Cutscenes Disabled</td>
<td>Whether the in-engine cutscenes are disabled.<br />
Default is <code>0</code>. Can be set in SB04.ini with <code>NoCutscenes</code>.</td>
</tr>
<td>Pad Check Disabled</td>
<td>Unsure (maybe disables checking if a gamepad is plugged in?)<br />
Default is <code>0</code>. Can be set in SB04.ini with <code>NoPadCheck</code>.</td>
</tr>
<td>Asynchronous Loading Screen</td>
<td>Controls whether the loading screen is synchronous.<br />
Default is <code>1</code>. Can be set in SB04.ini with <code>AsyncLoadingScreen</code>. Setting to <code>0</code> will prevent loading screens appearing while a level is loading.</td>
</tr>
<td>Movies Disabled</td>
<td>Whether the movies are disabled.<br />
Movies include .bik files in the folder FMV (e.g. story cutscenes, ability upgrade and studio logos videos).
Default is <code>0</code>. Can be set in SB04.ini with <code>NoMovies</code>.</td>
</tr>
<td>Force Mono</td>
<td>Whether the audio is in mono (i.e. one audio channel instead of stereo left/right channels).<br />
Default is <code>0</code>. Can be set in SB04.ini with <code>ForceMono</code>.</td>
</tr>
<td>Initial Unused Upgrade Points</td>
<td>Number of initial upgrade points the player has..<br />
Default is <code>0</code>. Can be set in SB04.ini with <code>G.UnusedSkillPoints</code>.</td>
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