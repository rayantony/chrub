[chrub](http://rayantony.github.io/chrub)
=========================================

###Acer C7 Chromebook Resources

####a collection of my chrubuntu setup tools and configurations for the Acer c710-2847 of which I run exclusively for literally everything, not necessarily by preference.

###Critical Acclaim (sort of):
<ul><i>
+ "Clearly you need to be in the market specifically for a cheap and smallish machine for day-to-day web surfing and some light media consumption"
+ "the downside is that battery life isn’t stellar. We can’t run our standard laptop-based tests on Chromebooks..."
+ "If you’re particularly precious about the number of keys you have under your fingertips, the size of your hard drive or the brightness of your screen - but aren’t concerned with what your laptop looks like - then by all means"
+ "If you only want to browse the web with your notebook, and that’s it, this machine will serve you well"
+ "Chromebooks are an oddity of the modern computing world"
+ "At $199, you get what you pay for..."
+ "you'll have to accept a lot of compromises"

###File Attachments 
These are som euseful tools I've cooked up for the purpose of creating USB Drives to run instances of Ubuntu/Chrubuntu/Raybuntu from. In haphazard repositories and folders scattered around there are many versions of each script, I'm attempting to organize and put working tested versions in a single place (this place). 

+ [raybuntuusb.sh](raybuntuusb.sh)
raybuntuusb.sh: This tool that runs in Bash is for taking an unpartitioned USB key/drive with no more than a Master Boot Record or MBR and creating a GPT table in the style of ChromeOS on which a kernel (partition 6) and filesystem (partition 7) can be placed. Because I "dd" the partitions from my clone repository or another plugged in drive, the partitions themselves are not actually formatted

+ [raybuntuusbfix.sh](raybuntuusbfix.sh)
Post "dd" fixer to adjust filesystem sizes and perform maintenance standard fsck'ing and e2fsck procesing especially useful for condensing master copies of installs for archival and easy transfer onto smallest, cheapest possible USB should that ever be a desired action. In a nutshell this is in automated Bash script form, what you would normally do in GParted. Useful if you dont have gparted but do have the parted libraries installed such as a developer or canary install of chromeos where you've added these things. 

+ [raybuntuusbkernel.sh](raybuntuusbkernel.sh)

+ [Kernel Kit](./kernel_kit/)


