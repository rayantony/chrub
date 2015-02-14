[chrub](http://rayantony.github.io/chrub/)
=========================================

###[Acer C7 Chromebook Resources README.md](https://github.com/rayantony/chrub/blob/master/README.md)

####see also [http://rayantony.github.io/chrub](https://rayantony.github.io/chrub/)

This a collection of my chrubuntu setup tools and configurations for the Acer c710-2847 of which I run along with a Pi B exclusively for literally everything including multiple businesses in all phases, development, beta testing, all communication non-cellular, and any entertainment needs if the time were allotted. Though not necessarily by preference. This involves a fair amount of setup work and understanding of the nuances of the machine, of ChromeOS and of Linux. Nothing terribly complicated but enough to surely frighten the novice linux user, perhaps with good reason. There is a lot to know but with this knowledge comes great power at almost inconceivably reasonable/affordable pricing. More for less, not something you stumble into everyday. If I could buy one for everyone in the world I would. 

###Critical Acclaim (sort of):
<ul><i>
+ "Clearly you need to be in the market specifically for a cheap and smallish machine for day-to-day web surfing and some light media consumption"
+ "the downside is that battery life isn’t stellar. We can’t run our standard laptop-based tests on Chromebooks..."
+ "If you’re particularly precious about the number of keys you have under your fingertips, the size of your hard drive or the brightness of your screen - but aren’t concerned with what your laptop looks like - then by all means"
+ "If you only want to browse the web with your notebook, and that’s it, this machine will serve you well"
+ "Chromebooks are an oddity of the modern computing world"
+ "At $199, you get what you pay for..."
+ "you'll have to accept a lot of compromises"

:laughing:

###File Attachments 
These are some useful tools I've cooked up for the purpose of creating USB Drives to run instances of Ubuntu/Chrubuntu/Raybuntu from most favor 12.04 64bit. In haphazard repositories and folders scattered around there are many versions of each script, I'm attempting to organize and put working tested versions in a single place (this place). In the hope of making my life easier and perhaps someone elses too.


+ [raybuntuusb.sh](https://github.com/rayantony/chrub/blob/master/tools/linux/raybuntuusb.sh)
raybuntuusb.sh: This tool that runs in Bash is for taking an unpartitioned USB key/drive with no more than a Master Boot Record or MBR and creating a GPT table in the style of ChromeOS on which a kernel (partition 6) and filesystem (partition 7) can be placed. Because I "dd" the partitions from my clone repository or another plugged in drive, the partitions themselves are not actually formatted

+ [raybuntuusbfix.sh](https://github.com/rayantony/chrub/blob/master/tools/linux/raybuntuusbfix.sh)
Post "dd" fixer to adjust filesystem sizes and perform maintenance standard fsck'ing and e2fsck procesing especially useful for condensing master copies of installs for archival and easy transfer onto smallest, cheapest possible USB should that ever be a desired action. In a nutshell this is in automated Bash script form, what you would normally do in GParted. Useful if you dont have gparted but do have the parted libraries installed such as a developer or canary install of chromeos where you've added these things. 

+ [raybuntuusbkernel.sh](https://github.com/rayantony/chrub/blob/master/tools/linux/)

+ [Kernel Kit](https://github.com/rayantony/chrub/blob/master/tools/linux/)

Use at your own risk contact me if you need help [http://rayanthony.io](http://rayanthony.io)


###So Why?

This is being typed on one such machine and it is the least expensive computer I have purchased in my life. By a considerable margin. I by a not so funny coincidence am more cash poor than I have ever been in my life, the confluence of these two circumstances (1 shortly preceding the other) has culminated in a new level of appreciation for affordable technology. As well an appreciation the difficulties facing those who never had a shot at wealth to begin with. I continue to use these machines largely because by my estimation it is cost prohibitive to reproduce the abilities they offer with more respected branded hardware. I am typing this article with in excess of 50 tabs, 3 ssh terminals, 5-10 additional terminals, an inconsistent source of power, output to a 40 inch LCD via HDMI, running a development Chrome, under Ubuntu 12.04.x, on a 8gb USB key-not the included SSD, and approx 10GB DDR3 RAM, it's at the moment the fastest machine I have ever used. though it would not be so under normal install conditions. This is the "why". Faster and cheaper is better, and better is good.

###Side Note

As a side note this particular USB is so slow I was going to toss is as defective. Such drives are enormously helpful as their lack of value provide a complete testing ground on which I can experiment fearlessly given they are trash bound anyway. This is what led me to an exciting discovery on the usefuless of tinkering with Linux tmpfs settings. In short an attempt to have a workable way to retrieve data from this drive while not being subject to the maddeningly slow performance, I have found a way to run faster than any machine i have ever used-period, with the additional benefit of true ephemeral chrome instances much like its Chromium counterpart. I will expand on this and the methodology later and likely in a separate repository where I can place the necessary setup files once I complete them. This further adds thoguh to the value of these machines as I can honestly say I am using a device that limits me in no practical way I can think of off hand, and in the ways I feel limited I would feel no different using top of the line macs. Since I dont use or care about the trackpad of any laptop, preferring an external keyboard mouse my whole life, I could give a shit about how nice the mac one is perceived to be. For now I am content to run faster for under $300, and a minimal level of pretention. 


2013-2015 [Ray Anthony](User:rayantony) [oneworldlicensed](http://oneworldlicense.com) [trollno protected](http://trollno.com) all rights reserved and all re-use is granted to the world should any occupant of that world find a use case where any of this is helpful, I am honored to have assisted.    
