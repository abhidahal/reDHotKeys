<h1> 🔥reDHotKeys</h1>

**reDHotKeys** is a keyboard script for a reDragon keyboard(works will all keyboards) that focuses on boosting productivity on Windows by giving similar features of vim and Tmux which are popular on linux and Windows key remapped to flow launcer hotkey (Alt + Space) and other productivity Hotkeys. This script gives Magic functions to space bar which controls the virtual windows screens and Magic Hold function for CapsLock which toggles vim like command mode. This script was made for Redragon K596 keyboard but will work with any keyboard.

## 🪄 Features

- Space Functions simulate Tmux like functions for changing virtual desktops.
- Moving application to desired virtual desktop with assigned keys.
- CapsLock Functions simulate vim features.
- Brightness Manipulation and scroll Simulation using Knob/Slider
- ScrollLock Toggle with Knob/Slider simulates mouse Movement.
- Displays Virtual desktop Number in Bottom Right of screen.

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
**Switch back** to the last desktop used|<kbd>Space</kbd> + <kbd>Tab</kbd>
**Create** a new virtual desktop<br>**Delete** the current virtual desktop|<kbd>Space</kbd> + <kbd>+</kbd><br><kbd>Space</kbd> + <kbd>-</kbd>
**Move** the current window to another desktop, then switch to it<br>*Keys <kbd>Q</kbd>, <kbd>W</kbd>, etc. correspond to **1st, 2nd, etc.** desktops*|<kbd>Space</kbd> + <kbd>Q</kbd><br><kbd>Space</kbd> + <kbd>W</kbd><br>...<br><kbd>Space</kbd> + <kbd>O</kbd>
**Move** the current window to the previous or the next desktop, then switch to it|<kbd>Space</kbd> + <kbd>H</kbd><br><kbd>Space</kbd> + <kbd>L</kbd>
**Dispaly** all the virtual windows opened |<kbd>Space</kbd> + <kbd>`</kbd>
**Dispaly** tooltip for all the commands |<kbd>Space</kbd> + <kbd>?</kbd>

> Note : space Key function normally if it is not pressed together with the above hot keys

#

### # Magic CapsLock Functions

CapsLock Toggle Action | Keys(Holding Capslock)
--- | :-:
**Simulate** arrow keys|<kbd>J</kbd> = <kbd>↓</kbd><br><kbd>K</kbd> = <kbd>↑</kbd><br><kbd>H</kbd> = <kbd>←</kbd><br><kbd>H</kbd> = <kbd>→</kbd>
**Enter** in the next line<br>**Enter** in the previous line|<kbd>O<br>(double)O</kbd>
**Navigating** to the bottom of the page<br>**Navigating** to the top of the page|<kbd>G<br>(double)G</kbd>
**Undo** and **Redo**  |<kbd>U</kbd> = <kbd>Undo</kbd><br><kbd>R</kbd> = <kbd>Redo</kbd>
**Copy** and **Paste** |<kbd>Y</kbd> = <kbd>Copy</kbd><br><kbd>P</kbd> = <kbd>Paste</kbd>
**Simulate** delete and backspace<br>*(While deleting whole line it copies it to clipboard)*|<kbd>X</kbd> = <kbd>Delete</kbd><br><kbd>Z</kbd> = <kbd>Backspace</kbd><br><kbd>D</kbd> = <kbd>Delete Whole Line</kbd><br><kbd>(double)c</kbd> = <kbd>Delete Whole Line and stay on the same line</kbd>
**Navigating** Cursor position|<kbd>E</kbd> = <kbd>End of the word</kbd><br><kbd>B</kbd> = <kbd>BEginning of the word</kbd>
**Cursor** Placement into normal mode<br>*(going back to normal mode with cursor position )*|<kbd>0</kbd> = <kbd>In the Beginning of the line</kbd><br><kbd>^</kbd> = <kbd>In the End of the line</kbd>
**Visual Mode**<br>*(going to visual mode to select )*|<kbd>V</kbd> = <kbd>SelectionMode</kbd> 

> Note : Holding CapsLock will toogle these commands, so when caps is on these keys will act as above.
> YOU WILL NOT BE ABLE TO USE THE NORMAL CAPSLOCK FUNCTIONALITY

#

### # Knob/Slider Functions

Knob  Action| Keys
--- | :-:
**Brightness** Manipulation|<kbd>Ctrl</kbd> + <kbd>Knob ↑</kbd> = <kbd>Brightness ↑</kbd><br><kbd>Ctrl</kbd> + <kbd>Knob ↓</kbd> = <kbd>Brightness ↓</kbd>
**Mouse Scroll** Simulation|<kbd>Alt</kbd> + <kbd>Knob ↑</kbd> = <kbd>Scroll ↑</kbd><br><kbd>Alt</kbd> + <kbd>Knob ↓</kbd> = <kbd>Scroll ↓</kbd>
**Mouse Movement** Manipulation on ScrollLock On<br>*(Toggle ScrollLock for mouse Movement by the knob)*|<kbd>Ctrl</kbd> + <kbd>Knob ↑</kbd> = <kbd>Mouse ↑</kbd><br><kbd>Ctrl</kbd> + <kbd>Knob ↓</kbd> = <kbd>Mouse ↓</kbd><br><kbd>Alt</kbd> + <kbd>Knob ↑</kbd> = <kbd>Mouse ↑</kbd><br><kbd>Alt</kbd> + <kbd>Knob ↓</kbd> = <kbd>Mouse ↓</kbd>
**Mouse Click**|<kbd>Pause</kbd> = <kbd>Mouse Click</kbd>

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

## 🐞 Bugs
- Keys not working on windows emoji popup ie (<kbd>Win</kbd> + <kbd>.</kbd> )

## ✨ Thanks
- pmb6tz for his work at [windows-desktop-switcher](https://github.com/pmb6tz/windows-desktop-switcher)
- [AutoHotKeys Board](https://www.autohotkey.com/board/)
