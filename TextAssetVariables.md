# Text Asset Variables
Variables that can be used in Text assets in The SpongeBob SquarePants Movie.

To see all text formatting options, visit https://battlepedia.org/TEXT
<table>
<thead>
<tr>
<th>Variable</th><th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>ActivePad</td>
<td>Unsure (Controller slot?)</td>
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
<td>CurrentArea</td>
<td>Possibly deprecated, leftover from previous games?<br />
Maybe used early on in development.
<table>
<thead>
<tr>
<th>Area</th><th>Value of CurrentArea</th>
</tr>
<tr>
<td>BB02</td><td>Milestone Test Level</td>
</tr>
<tr>
<td>BB03</td><td>Desert 1</td>
</tr>
<tr>
<td>BB01</td><td>Thug Tug 1</td>
</tr>
<tr>
<td>DE01</td><td>Trench 1</td>
</tr>
<tr>
<td>DE02</td><td>Junk 1</td>
</tr>
<tr>
<td>TT01</td><td>Goofy Goober 1</td>
</tr>
<tr>
<td>TT02</td><td>Shell City 1</td>
</tr>
<tr>
<td>B101</td><td>Planktopolis 1</td>
</tr>
<tr>
<td>JK01</td><td>Frog Fish Boss</td>
</tr>
<tr>
<td>B201</td><td>Dennis Boss 1</td>
</tr>
<tr>
<td>GG02</td><td>Neptune Boss</td>
</tr>
<tr>
<td>TR01, TR02, TR03, JK02, SC02, B301, PT01, PT03, PT02, B401, AM01, AM02, AM03, AM04, FB01, FB02, FB03, BL01, BL02, BL03, BL04</td><td>????</td>
</tr>
</thead>
<tbody>
</tbody>
</table>
</td>
</tr>
<tr>
<td>CurrentDate</td>
<td>The current date, e.g. "Sunday April 4, 2021"</td>
</tr>
<tr>
<td>CurrentLevel</td>
<td>The name of the current level, e.g. "No Cheese!"</td>
</tr>
<tr>
<tr>
<td>CurrentScene</td>
<td>The name of the current level's HIP file, e.g. "BB03".</td>
</tr>
<tr>
<td>CurrentTime</td>
<td>The current time, e.g. "1:18:03 P.M."</td>
</tr>
<tr>
<td>GameSlot0</td>
<td>Status of game save file slot 0.<br/ >
Contains game completion %, date saved, save file size in blocks and last level, e.g. :<br />
<pre>
"0%  04/04/21    (9 Blocks)
I'm Ready... Depression"
</pre>
Will be "Empty" if nothing in the save slot.
</td>
</tr>
<tr>
<td>GameSlot1</td>
<td>Status of game save file slot 1.</td>
</tr>
<tr>
<td>GameSlot2</td>
<td>Status of game save file slot 2.</td>
</tr>
<tr>
<td>GameSlot3</td>
<td>Status of game save file slot 3.</td>
</tr>
<tr>
<td>GameSlot4</td>
<td>Status of game save file slot 4.</td>
</tr>
<tr>
<td>GameSlot5</td>
<td>Status of game save file slot 5.</td>
</tr>
<tr>
<td>GameSlot6</td>
<td>Status of game save file slot 6.</td>
</tr>
<tr>
<td>GameSlot7</td>
<td>Status of game save file slot 7.</td>
</tr>
<tr>
<td>MCAccessType</td>
<td></td>
</tr>
<tr>
<td>MCAutoSaveCard</td>
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
<td>MCName</td>
<td></td>
</tr>
<tr>
<td>MCSelectedCard</td>
<td></td>
</tr>
<tr>
<td>MCSelectedGame</td>
<td></td>
</tr>
<tr>
<td>NumChestsCurrentLevel</td>
<td>Number of treasure chests collected in the currently selected level. Updates while scrolling through levels in pause menu.</td>
</tr>
<tr>
<td>NumChestsNeeded</td>
<td></td>
</tr>
<tr>
<td>NumChestsTotalCurrentLevel</td>
<td>Total number of treasure chests in the currently selected level. Updates while scrolling through levels in pause menu.</td>
</tr>
<tr>
<td>PlayerPosition</td>
<td>The player's position in the format x, y, z with the decimal part removed (i.e. coordinates are floored).</td>
</tr>
<tr>
<td>PS2PadName</td>
<td>Unsure (PlayStation 2 variable?)</td>
</tr>
<tr>
<td>SelectedArea</td>
<td>Unsure (Appears to always be "????")</td>
</tr>
<tr>
<td>SoundFXVolume</td>
<td>Sound effects volume, 0-10.</td>
</tr>
<tr>
<td>SoundMusicVolume</td>
<td>Music volume, 0-10.</td>
</tr>
<tr>
<td>SpaceAvailable</td>
<td>Number of blocks available on the memory card in the smallest available slot.</td>
</tr>
<tr>
<td>SpaceAvailableString</td>
<td>Unsure (Same as above, but value is a string instead of number?)</td>
</tr>
<tr>
<td>SpaceNeeded</td>
<td>Space required to save game?</td>
</tr>
</tbody>
</table>