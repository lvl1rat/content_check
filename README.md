# Content_Check


###	---Description---


This simple script helps on searching for C archives, Makefiles and libraries starting at the path passed as input [-i]
Useful when last-chacking full C projects before git pushing it [see git]

###	---Installation---

Navigate to the script folder and run the setup.sh script using the **sudo bash** command
```	
	Ex: sudo bash setup.sh
```

Or: Add an executable permition to the setup.sh file and run it
```
	chmod +x setup.sh && ./setup.sh 
```
###	---Usage---

After installation you can use the **content_check** keyword directly on terminal followed by **flags**
```
	Try content_check -h for more info.
```
```
	content_check [-i path] [-f] [-e]...

	-i /dir       - Input folder.
	-c            - Searches for C archives only. [.c].
	-l            - Searches for libraries only. [.h].
	-m            - Searches for Makefiles only. [Makefile].
	-f            - Searches for C archives, Makefiles and libraries.
	-e            - Searches for empty folders.
	-h            - Help.
```


###	---Note---

You can always check the script itself to see its behaviours.




**By: lvl1rat**
