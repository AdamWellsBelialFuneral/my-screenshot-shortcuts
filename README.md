# My Screenshot Scripts

These are two simple scripts I use for taking screenshots:

- **Full screenshot**: Captures the entire screen.
- **Cropped screenshot**: Allows selecting an area to capture.

Both scripts perform two actions:

* Save the screenshot to `Pictures/Screenshots` folder and **clipboard**

## Usage

Install required packages:
```bash
sudo apt install xfce4-screenshooter scrot xclip
```
Make sure they are executable

You can run the following commands:
```bash
chmod +x crop_screenshot.sh
chmod +x full_screenshot.sh
```

### Bind them to a keyboard shortcut

For systems without a **built-in shortcut manager**, like **Mint**, you can use **xbindkeys** to achieve this.

Install xbindkeys with the following command:
```bash
sudo apt install xbindkeys
```
Create a default configuration file:
```bash
xbindkeys --defaults > ~/.xbindkeysrc
```

Open ~/.xbindkeysrc in a text editor to edit your shortcuts.
You can use **nano:**
```bash
sudo nano ~/.xbindkeysrc
```
Add the following lines to bind the scripts to specific keys (you can adjust the key bindings):
```bash
# Full Screenshot (Print Screen)
"bash ~/full_screenshot.sh"
Print

# Cropped Screenshot (Ctrl + Print Screen)
"bash ~/crop_screenshot.sh"
Control + Print
```
Press **Ctrl + S** then **Ctrl + X** to *save and exit*

### Make xbindkeys start with your system
```bash
nano ~/.xsession
```
Then add the following line:
```bash
xbindkeys &
```
Press **Ctrl + S** then **Ctrl + X** to *save and exit*
