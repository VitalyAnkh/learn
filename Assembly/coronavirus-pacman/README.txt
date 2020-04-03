Virus-Pacman
You are a kind doctor and coronavirus is spreading! Only facemasks could save the world. Seek facemasks and defeat the virus!

To Build
You must install tasm to build the project. The reason why I don't use masm is masm lacks a lot of functionality I want to use to build a good game.
When you install tasm, just go to this directory (virus-pacman) and run `tasm coronavirus.asm` and you should see `coronavirus.exe` is available.


To Run
Go to this directory(virus-pacman) and run `coronavirus.exe`.

To Understand The Code
All the "{" and "}" are after a ";", so they are only comments and have no meaning for assembler. I use them to split the code for better reading.
Usually in a pacman game, the enemy is called "ghost". So in the code I write "ghost", which means virus the enemy.

To Install tasm and configure DosBox to use tasm
1. Download tasm zip(https://drive.google.com/file/d/0BxFfQqBvZCltMHdNbFFCZVJkUlE/view)
2. extract the files and copy the files to your DosBox's C:\ directory. That's to say, if you 
run `mount C C://my_dosbox_home` at the start of DosBox, you should copy files of tasm to "C://my_dosbox_home".
3. Assume your DosBox's home directory is <DosBox_Home>(for example, C://my_dosbox_home), then append following lines to your 
dosbox configuration file(for example, dosbox.conf):
mount C <DosBox_Home>
C://
4. Launch dosbox using command `dosbox -conf dosbox.conf`. Done! You can run `tasm coronavirus.asm` to build to game now.