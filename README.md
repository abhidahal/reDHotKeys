<h1> 🔥reBornDragon</h1>

**reBornDragon** is a keyboard script that focuses on boosting productivity on Windows by giving similar features of vim and Tmux which are popular on linux and Windows key remapped to flow launcer hotkey (Alt + Space) and other productivity Hotkeys. This script gives Magic functions to space bar which controls the virtual windows screens and Magic Toggle function for CapsLock which toggles vim like command mode. This script was made for Redragon K596 keyboard but will work with any keyboard.

## ⚙️ Installation

- Install [AutoHotKeys](https://www.autohotkey.com/) v1.1.33+
- Run the [reBornDragon](https://github.com/abhidahal/reBornDragon/blob/main/reBornDragon.ahk) script
- Enjoy your productivity

## ⌨️ Hotkeys

### # Magic Space Key Functions

Space Action | Keys.
--- | :-:
**Switch** to virtual desktop **1, 2, etc.**<br>*(you can also use the Numpad)*|<kbd>Space</kbd> + <kbd>1</kbd><br><kbd>Space</kbd> + <kbd>2</kbd><br>...<br><kbd>Space</kbd> + <kbd>9</kbd>
**Switch** to the virtual desktop on the **left**<br>*(auto-cycles from the first to the last desktop)*|<kbd>Space</kbd> + <kbd>J</kbd>
**Switch** to the virtual desktop on the **right**<br>*(auto-cycles from the last to the first desktop)*|<kbd>Space</kbd> + <kbd>K</kbd>
**Create** a new virtual desktop|**<kbd>Space</kbd> + <kbd>+</kbd>**
**Delete** the current virtual desktop|<kbd>Space</kbd> + <kbd>-</kbd>
**Move** the current window to another desktop, then switch to it<br>*Keys <kbd>Q</kbd>, <kbd>W</kbd>, etc. correspond to **1st, 2nd, etc.** desktops*|<kbd>Space</kbd> + <kbd>Q</kbd><br><kbd>Space</kbd> + <kbd>W</kbd><br>...<br><kbd>Space</kbd> + <kbd>O</kbd>
**Move** the current window to the previous or the next desktop, then switch to it|<kbd>Space</kbd> + <kbd>H</kbd><br><kbd>Space</kbd> + <kbd>L</kbd>
**Dispaly** all the virtual windows opened |<kbd>Space</kbd> + <kbd>`</kbd>
**Switch back** to the last desktop used|<kbd>Win</kbd> + <kbd>Tab</kbd>

> Note : space Key function normally if it is not pressed together with the above hot keys

#

### # Magic CapsLock Toggle Functions

CapsLock Toggle Action | Keys(After Capslock Toggle)
--- | :-:
**Simulate** arrow keys|<kbd>J</kbd> = <kbd>↓</kbd><br><kbd>K</kbd> = <kbd>↑</kbd><br><kbd>H</kbd> = <kbd>←</kbd><br><kbd>H</kbd> = <kbd>→</kbd>
**Enter** in a new line|<kbd>O</kbd>
**Undo** and **Redo**  |<kbd>U</kbd> = <kbd>Undo</kbd><br><kbd>R</kbd> = <kbd>Redo</kbd>
**Copy** and **Paste** |<kbd>Y</kbd> = <kbd>Copy</kbd><br><kbd>P</kbd> = <kbd>Paste</kbd>
**Simulate** delete and backspace<br>*(While deleting whole line it copies it to clipboard)*|<kbd>X</kbd> = <kbd>Delete</kbd><br><kbd>shift + X</kbd> = <kbd>Backspace</kbd><br><kbd>D</kbd> = <kbd>Delete Whole Line</kbd>
**Navigating** Cursor position|<kbd>E</kbd> = <kbd>End of the word</kbd><br><kbd>B</kbd> = <kbd>BEginning of the word</kbd>
**Cursor** Placement into normal mode<br>*(going back to normal mode with cursor position )*|<kbd>A</kbd> = <kbd>End of the current letter</kbd><br><kbd>I</kbd> = <kbd>In the current position</kbd>

> Note : CapsLock will toogle these commands, so when caps is on these keys will act as above<br>YOU WILL NOT BE ABLE TO USE THE NORMAL CAPSLOCK FUNCTIONALITY

#

### # Knob/Slider Functions

Knob  Action| Keys
--- | :-:
**Brightness** Manipulation|<kbd>Ctrl</kbd> + <kbd>Knob ↑</kbd> = <kbd>Brightness ↑</kbd><br><kbd>Ctrl</kbd> + <kbd>Knob ↓</kbd> = <kbd>Brightness ↓</kbd>
**Mouse Scroll** Simulation|<kbd>Alt</kbd> + <kbd>Knob ↑</kbd> = <kbd>Scroll ↑</kbd><br><kbd>Alt</kbd> + <kbd>Knob ↓</kbd> = <kbd>Scroll ↓</kbd>
> Note : These will only work if your keyboard has a physical knob

#

### Windows key to Flow Launcher Swap
Win  Key| {Flow Launcher Hotkey}
--- | :-:
> Note : Assign (<kbd>Alt</kbd> + <kbd>Space</kbd>) as the hotkey for flow launcher for this to work<br> All the Windows Shortcuts willl remain the same

#

### Other Hotkeys

Other  Action| Keys
--- | :-:
**Terminate** curret active Application|<kbd>Alt</kbd> + <kbd>X</kbd>
**Psudo** Enter Key|<kbd>Right Alt</kbd> 
