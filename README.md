# Steves-Start-And-Scram
A linux-based live-cd that automatically issues the erase script found at https://github.com/gomezdevelopment/erase_script





PLEASE NOTE: THIS IS INTENDED TO ERASE ALL DATA ON ALL ATTACHED DRIVES! DO NOT USE UNLESS YOU WANT TO SEE ALL OF YOUR DATA BYE-BYE! I, NOR ANYONE, WILL BE ABLE TO RECOVER YOUR FILES BY CONVENTIAL MEANS AND DATA AFTER THIS IS EXECUTED CORRECTLY. THERE IS NO WARRANTY WITH THIS! YOU WILL DESTROY YOUR DATA! DON'T ASK ME FOR HELP IF YOUR DATA IS GONE! THERE WILL BE NOTHING I CAN DO TO HELP!!!




The intended use-case is that you drop this CD into your computer, boot off of it, type in the magic phrase, and from there it will:
  detect all of your drives -- SSD and HDDs
  detect if they are "frozen", meaning they aren't in a state to be issued the secure-erase commands,
  put the computer into standby mode if required and wake the system up to bring the drives out of "frozen" status
  Use hdparm to lock the drives and then issue the enhanced secure erase command, the secure erase command, or just overwrite the entire thing using dd and /dev/urandom

Ideally, it will also spit out a short report saying which drives were destroyed, which methods were used, the date, and do an internal verification. DBAN states that it will not support SSDs, whereas Steve's Start and Scram (SSS) will execute the "enhanced secure erase". If the dd-method of erasure is used, only a single pass will be performed. Based off of research by Gordon Hughes and Tom Coughlin, a single-pass overwrite of data is sufficient for data erasure.
  -2006 NIST Special Publication 800-88 Section 2.3 (p. 6): "Basically the change in track density and the related changes in the storage medium have created a situation where the acts of clearing and purging the media have converged. That is, for ATA disk drives manufactured after 2001 (over 15 GB) clearing by overwriting the media once is adequate to protect the media from both keyboard and laboratory attack."
  -The Center for Memory and Recording Research located at the University of California, San Diego (CMRR at UCSD) states: "... multiple overwrites are no more effective than a single overwrite." (DataSanitizationTutorial.pdf)

The script was originally written using the SystemRescueCD, but due to the long boot time and large ISO size, it is being migrated to TinyCoreLinux. 
  
Secure-Erase and Enhanced-Secure-Erase comply with NIST 800-88 standards for the "Purge" procedure and is designed to erase all user data on hard drive, including sectors which have been remapped to the reallocated sector area. The Secure Erase is designed to withstand attacks up to the "laboratory level" -- so data can still remain on disk, but it will be nearly impossible without the use of intimite knowledge of the vendor-specific methods, algorithms, and layout of data storage, as well as the use of laboratory equipment, such as a using Magnetic Force scanning Tunnelling Microscopy techniques.

Why would anyone use this then? Why, I'm glad you asked that question! Ever have a virus on the hard drive? Or just want to ensure that the drive is indeed 100% cleaned off and ready for re-use? Or have you ever wanted to sell or give a computer to someone or some company?

Why should I listen to anything you are writing? Well, if you made it this far, good for you! And good for you for not just taking everything at face value when someone says "you can trust me!". I am actually a Certified Data Recovery Expert and have completed an intense and awesome class. If you would like to know more where you can take this class, please don't hesitate to contact me and I will give you all of the details and where you too can learn more. I've also been reading about data recovery for quite some time, so I do know a thing or two about data recovery and data destruction.

Last but not least, if you see something you feel can be better, by all means, contribute. I will not take it personally. I welcome fixes, optimizations, updates, and enhancements. It has taken me a considerable amount of time to write what I have completed, even though most people could probably out-do it in the matter of a single night.
