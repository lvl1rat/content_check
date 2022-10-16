# Content_Check


###	---Description---

This simple script helps on searching for C archives, Makefiles and libraries starting at the path passed as input [-i].
Useful when last-checking full C projects before git pushing it [see git].

###	---Installation---

-Navigate to the script folder and run the setup.sh script using the **sudo bash** command followed by the **-i** [install] flag.

```	
	$sudo bash setup.sh -i
```

Or: Add an executable permission to the setup.sh file and run it.

```
	$chmod +x setup.sh
	$./setup.sh -i
```

If no **content_check** alias are present when checking the alias list, try manually sourcering the **.bashrc** file.

```
	&alias - Displays the alias list
```

```
	&source ~/.bashrc
```

This should solve it.

###	---Usage/Syntax---

After installation you can use the **content_check** keyword directly on terminal followed by **flags**.

```
	$content_check -h for more info.
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

###	---Uninstalling---

Navigate to the repo folder and run **./setup.sh** followed by the **-u** [uninstall] flag.

```
	$./setup.sh -u
```

You might want to delete the repo folder, if so, keep a copy of the setup.sh for a future uninstalling or do it manually as follows

```
	$unalias content_check
	$rm -f ~/.content_check.sh
```

###	---Note---

*You can always check the script itself to see its behaviors.*



**lvl1rat**  :mouse2:
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

###	---Uninstalling---

Navigate to the repo folder and run **./setup.sh** followd by the **-u** [uninstall] flag.
```
	$./setup.sh -u
```
You might want to delete the repo folder, if so, keep a copy of the setup.sh for a future uninstalling or do it manually as follows
```
	$unalias content_check
	$rm -f ~/.content_check.sh
```

###	---Note---

*You can always check the script itself to see its behaviours.*




**lvl1rat**  :mouse2:
