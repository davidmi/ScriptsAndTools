ScriptsAndTools
===============

This repository holds various scripts and tools I write to make my life a bit easier. Below is a list of them with usage instructions.

pass.bat
--------

I really like [pass, the standard unix password manager](https://github.com/zx2c4/password-store).
Sometimes, however, I want to access my password database from a Windows system using similar syntax.
pass.bat provides barebones viewing functionality for pass's directory, which is simply a collection of
gpg'd passwords. It requires [gpg4win](http://www.gpg4win.org/) to be installed and have the relevant
keypair imported, and the `gpg` command to be in the `%PATH%`

Then `pass.bat` will tree-list all the passwords in the directory and `pass.bat <password file>` will
gpg-decrypt and copy the password to the clipboard, wait 40 seconds, and then clear the clipboard.
Adding it to the `%PATH%` allows a very similar experience to pass's in cmd, albeit that password creation
is as yet unsupported.
