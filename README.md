# PickleOS
PickleOS is a operating system in development and it is currently NOT ready for production.
It will be ready for people soon. Stay tuned! :wink:


## For developers
If you wish to test this out on your system (VM recommended) feel free.
If you wish to contribute you should at least have basic knowledge of C, C++, Assembly and the way that an OS functions.


## Dependencies
If it was ready (which it isn't...) and you wanted to get it. There would be no dependencies becuase it would all be in the ISO file. But, if you want to download the source and work on it. You will need the following packages:
```$ sudo apt-get install \
    xorriso \
    grub-legacy \
    g++ \
    libc6-dev-i386 \
    binutils
```


## Build Instructions
To build the kernel's source tree you will need access to a terminal.

1. Navigate to the directory where the OS has been cloned to.

2. Run `make kernel.bin` This will build the kernel into a binary file.

3. Run `make kernel.iso` This will build the binaries into an image.

4. Get VirtualBox. The makefile has been configured to use virtualbox for testing. If you don't wish to use VirtualBox then you will not be able to take advantage of the makefile.
If you are on Linux with the Apt package manager; you can get VirtualBox by running:
`sudo apt-get install virtualbox`
If you use another package management system then figure it out yourself.

If you wanna install it and add it to the bootloader entries. Run:
`make install`

If you have made changes or you just wish to rebuild it run:
`make clean`
