## scripts
Just a few quick scripts that I've written as I've needed them.

### screenshot deleter
I take a weirdly large amount of screenshots to show work and demonstrate things. Figured I could automate the management of them. Add a `cronjob` and away you go.

### screenshot mover
An evolution of the deleter, this is the next iteration where I can automate the sorting of the screenshots rather than deleting them and losing useful data. Creates folders based on the current date for easier navigation. Voila!

`Currently not working, but a WIP.`

### ssh keygen to 1Password
Newer versions of the 1Password CLI seem to be able to do this simpler, but I spent too long working on this to go back and start from scratch. Sunken costs and whatnot.
Creates an Ed25519 SSH key locally, then adds it to your 1Password private vault before securely deleting the private key.

`Had to nullify moving it to the vault, as it works but reports that it hasn't worked(????). I'll debug that at some point, but for now it works well enough.`
