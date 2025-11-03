[//]: <> (This readme is in the markdown format. Please preview in a markdown parser.)

# Splatterhouse RPG FC: English Translation

## About
This repository contains source code for patches and tools to compile an English translation of Splatterhouse RPG for the Famicom.

## Folders
* roms
	* Use this to store your roms
* script
	* Contains the dump script in Script.json. It contains the Japanese script and the English translation.
	* You can also store xlsx backups of the script here.
* tables
	* Contains table files
		* Files prefixed with "CHR" specify byte to character mapping.
		* Files prefixed with "Dictionary" specify dictionary mapping. A dictionary can be mapped to multiple character values.
		* Files prefixed with "SquishyText" do some find and replace functions
			* "SquishyText - New.tbl" replaces character patterns to be in one tile. For example, "ll" is converted to the character "[ll]".
			* "SquishyText - Original.tbl" merges the dakuten and handakuten diacritics into the Japanese characters to form a single character. The game is weird about diactrics. For one, the diactrics appear before the character they belong to. Also, dictionaries can contain diactrics that aren't associated with a character in the dictionary itself. This means we can't simply specify "が" in a table file, but apply the conversation after the script has been dumped.
		* Files with "Length" let you specify how wide, in pixels, characters are. This affects `spiro.exe`'s autolinebreaking logic. For a game without VWF, most characters should have a length of `8`. 
* tools
	* cyproAce
		* A script editor 
	* spiro
		* Script dumper and inserter
	* xkas+
		* Applies the assembly patches

