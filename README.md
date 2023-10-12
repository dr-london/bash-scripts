## bash scripts
A few quick scripts that I've written as I've needed them.

### screenshot deleter
I take a weirdly large amount of screenshots to show work and demonstrate things. Figured I could automate the management of them. Add a `cronjob` and away you go.

### screenshot mover
An evolution of the deleter, this is the next iteration where I can automate the sorting of the screenshots rather than deleting them and losing useful data. 

Creates folders based on the current date for easier navigation. Voila!

### ssh keygen to 1Password
Newer versions of the 1Password CLI seem to be able to do this simpler, but I spent too long working on this to go back and start from scratch. Sunken costs and whatnot.

Creates an SSH key locally, then adds it to your 1Password private vault before securely deleting the local private key.

> Had to nullify some of it, it still works but spits out an error code. Will troubleshoot at some point.

### html-setup
Super basic folder and file structure for some little projects. I envision this will expand over time.
Yes, the code is sub-optimal (for now!)

### full setup
As the name suggests, this is a script to automate as much of the 'new mac' or 'fresh wipe' setup as possible.

`Very much a WIP! Also has not been tested. Use at your own risk`