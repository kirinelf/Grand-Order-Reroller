# Grand-Order-Reroller
Unattended rerolls for Fate/Grand Order, originally by chaosking121, edited by kirinelf.

# Why It Exists
I know MEmu has macro support, but if you ask anyone who uses it, you'll hear that they only automate up until the tutorial 10-roll because the fourth fight is non-determinisitic. You will also hear tips like leaving a lot of time between actions to account for variations in timing, which lengthens the time it takes for you to do a run. Also, in my experience, using MEmu's macros drastically reduced the stability of MEmu. 

This script solves some of those problems:
- Completely unattended unless MEmu crashes (for now).
- Saves all accounts + rolls in a convinient format for easy access.
- can handle non-deterministic events.
  - can handle a variable number of yolo-rolls at the end.
  - can handle a variable number of turns in the fourth battle.
  - can naively handle things like IP bans (right now, just wait it out).
- Improved stability, since MEmu isn't doing anything extra.
- Ability to change and edit the script without redoing the entire macro, this script can easily be updated to account for changes in the tutorial in the future.

However, it is not perfect. This method of rerolling has two major issues:
- It requires mouse focus, so it's diffult to do anything else on the same PC at the same time. 
- Only one instance, as a consequence of the above problem.

# What It Does
This script automates the process of rerolling from a clean install all the way to the first possible multiroll (that isn't part of the tutorial), including the clearing of data at the end. In theory, this script is capable of running indefinitely due to the original author (chaosking121) doing an amazing job of taking into account both scripted and non-scripted battles. However, in practice, the emulator used, MEmu, is a little on the unstable side. I usually get about two hours or so of rerolling before something jams and I have to restart, but ultimately, it does what it's supposed to do: Reroll.

As of current, unlike chaosking121's version, this version does not use up all your resources, doing only multirolls before saving the results. This, to my mind, has the following benefits: 

- It saves a lot of time. Doing all the single rolls takes a long time, and this counts down on that immensely. 
- It saves resources for upcoming events. I am personally saving for Okita and Jack. Crit teams make some hilarious numbers. 

I have also painstakingly (Given my near nonexistant knowledge about coding and cmd commands) made a number menu that will (hopefully) give users an easier time executing all the functions the script provides. The menu is very self explanatory, so I hope it'll help. 

Here's a look at it: 

![](http://i.imgur.com/lRVVI8q.png)

# Basic Instructions:
- [Install Python](https://wiki.python.org/moin/BeginnersGuide/Download). This project uses Python3. **Be sure to tick the 'add to path' button during setup.**
- Run `pip install pyautogui numpy opencv-python` to install dependencies.
- Download this repo.
- [Setup MEmu](https://www.reddit.com/r/grandorder/comments/6akkkq/emu_wars_episode_x_return_of_the_emu/)
- [Get Grand Order Image](https://www.reddit.com/r/grandorder/comments/6jompd/modified_memu_image_with_fgo_na_preloaded_and/)
- Setup your MEmu instance as 1280x720 (default) **and make sure it is at 0,0 (upper left) of your screen**.
- [Update Grand Order](https://drive.google.com/file/d/0B8tqm0cp0TuwWWNZRDgwZUFSMmM/view)
- (Optional) Install the Clear Data apk from this repo in MEmu for easy clearing of data.
- Fill in your preferred name and default password into settings.example.py and rename it to settings.py. Ignore other fields for now.
- Create shorcut to Menu.bat andset it to run as administrator. 
- Run shortcut and use number menu to utilize functions.

# In-depth Walkthrough:
## Setting up MEmu:
- Uninstall MEmu. A clean install will resolve 99% of your problems. I had FGO working for my first reroll session a week ago, but it stopped working when I wanted to try this script. A clean install fixed that. 

- Download and install the latest version of MEmu from their website [here](http://www.memuplay.com/). Download and install KitKat and Lollipop using their links from [this thread](https://www.reddit.com/r/grandorder/comments/6akkkq/emu_wars_episode_x_return_of_the_emu/). 

- Download the OVA file using the MEGA links [here](https://www.reddit.com/r/grandorder/comments/6jompd/modified_memu_image_with_fgo_na_preloaded_and/djftw2l/). It comes in two files, one ending in .001 and another ending in .002. **YOU NEED BOTH.** This is a 7zip extension, but WinRAR should work as well. Extract the image somewhere by right clicking on the one ending in .001 and hitting Extract.

- Open up the MEmu Multi Instance Manager (It should look like [this](http://i.imgur.com/rRy6uIA.png)), then hit Import down the bottom. Navigate to where you extracted the .OVA file from step 2 and select that, let the thing import. 

**NOTE: If it says Import Failed, you did not install MEmu properly. Uninstall everything and reinstall according to the instructions above**

- Once your image is imported, start it and let it load. Once loaded, click the Settings button located on the sidebar [here](http://i.imgur.com/LnpQAvx.png). Change your Window Position to [these settings](http://i.imgur.com/kGl3WSY.png), then head over to the Advanced Tab and [untick Root Mode](http://i.imgur.com/t61lq0R.png). Restart MEmu.

- Download the latest version of FGO (v1.1.0 as of the time of writing) from your site of choice (I used chaosking121's link [here](https://drive.google.com/file/d/0B8tqm0cp0TuwWWNZRDgwZUFSMmM/view)), then install it using MEmu's option [here](http://i.imgur.com/KQfcmJ6.png). 

- Install Clear_GO_Data.v2.apk from the repo and move the icon so it's directly to the left of the FGO icon [like this](http://i.imgur.com/iWDVTGU.png). 

## Setting up the script:
- Download the repo from the link highlighted [here](http://i.imgur.com/JGysYvD.png). Extract the folder somewhere, anywhere you can access it. This is where you'll find the results of your rolls. It should look roughly like [this](http://i.imgur.com/lYoUfDj.png), although mine has a few extras. 

- Open Notepad, and click and drag settings.example.py from the folder into it. Put in the name you'd like, and the password. The name will be your Master's name (you can change it anytime you want once you find a roll you like), and the password is the password that will be linked to the transfer code generated by the game. Once you've done that, save and close Notepad, then rename the to 'settings.py' by removing '.example'. In my screenshot above, I kept the file by making a copy of it just in case. 

- [Install Python](https://www.python.org/downloads/windows/). I'm assuming you're on Windows, so the link you want is highlighted [here](http://i.imgur.com/aEOYf4T.png). Make sure you click this option when installing: [Someone else's link](http://3.bp.blogspot.com/-pQXaSsTBovk/VfqLc2dTvcI/AAAAAAAABNE/SW0e9eEkhzs/s1600/python1.PNG) (*The version is different, but the same thing applies)*

- Open up cmd.exe (If you're on Windows 7, 8, or 10, just open up the start menu and type cmd.exe, it should show up) and run this command: 
> pip install pyautogui numpy opencv-python

- Create a shortcut to Menu.bat. Name it whatever you want, place it wherever you want. Right click it and hit Properties, then under the Advanced option of the Shortcut Tab, make sure that 'Run as administrator' is ticked [like this](http://i.imgur.com/KY9nH1u.png). Save your changes and you're done!

## Running the script:

- Open up MEmu as configured above. 

- Open up the shortcut created above. 

- Follow the instructions as stated. Simply type the number, then hit Enter. Here they are again for reference:

1) Runs the rerolling script. 
2) Runs the roll handler script that renames the folders. 
3) Opens up the folder where your rolls are saved. 
4) Exits the window. 

**Make sure your command window doesn't cover the MEmu window. Move it to one side before typing in your commands, otherwise it will not work properly.**


# Screenshots
In v3, chaosking121 switched from PyAutoGUI's image detection to naive computer vision with opencv and numpy. This is much faster and produces much less false negatives. And most importantly for end users, it does not require you to retake all screenshots. 

# Notes
- You can adjust the timings for all time.sleep() calls and the delay between PyAutoGUI actions with the TIMING_MULT and PAUSE_TIME variables respectively.
- I recommend using a VPN to avoid IP bans. Ideally a fully unattended setup would try to get a new IP by disconnecting from and reconnecting to the VPN, but it doesn't do that yet.
- Possible issues:
  - There have been instances where bind codes have been lost due to an unknown issue. Because of the rarity of the problem, I am unable to determine the cause. However, after losing an account he quite liked, chaosking121 decided to implement some additional checks that should correct the issue should it occur.
  
# Clearing Data
There's an apk included in this repo. If you install that apk then click the icon, it will clear the data and allow you to reroll without downloading any data or messing in ES File Exporer. The script assumes you will have this apk installed and its icon will be located on the home screen directly to the left of the Grand Order icon's default position in the ova linked above.

# Roll Tagging and Notifications
As of v3, there is now a roll tagging feature that will inspect rolls and provide some information about the summons in that roll. Right now, in order to avoid conflicting with the main purpose of the script, this functionality is in its own file, `roll_handler.py`. 

Running `python roll_handler.py` will scan the rolls folder every two minutes for completed but untagged rolls and will rename the folder to reflect what it found. 

If you install Pushbullet.py with `pip install pushbullet.py` and set your [API Key](https://docs.pushbullet.com/v1/) in `settings.py`, then you will also be notified of good rolls.

Be aware that there is no detection of duplicate rolls at this time.



