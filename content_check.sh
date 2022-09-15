#!/bin/bash

path="./"

while getopts 'fei:hclm' OPTION; do
  case "$OPTION" in
    i)
      path="$OPTARG"
      ;;
    c)
        tput setaf 2
        echo --------------------------------------------------------------Looking-for-C-archives..
        tput sgr0

        find "$path" -type f -name '*.c' -print
      ;;
    l)
        tput setaf 4
        echo --------------------------------------------------------------Looking-for-libraries...
        tput sgr0

        find "$path" -type f -name '*.h' -print
      ;;
    m)
        tput setaf 3
        echo --------------------------------------------------------------Looking-for-makefiles...
        tput sgr0

        find "$path" -type f -name 'Makefile' -print
      ;;
    f)
        tput setaf 2
        echo --------------------------------------------------------------Looking-for-C-archives..
        tput sgr0

        find "$path" -type f -name '*.c' -print
        tput setaf 4
        echo --------------------------------------------------------------Looking-for-libraries...
        tput sgr0

        find "$path" -type f -name '*.h' -print
        tput setaf 3
        echo --------------------------------------------------------------Looking-for-makefiles...
        tput sgr0

        find "$path" -type f -name 'Makefile' -print
      ;;
    e)
        tput setaf 1
        echo --------------------------------------------------------------Looking-for-empty.......
        tput sgr0
        find "$path" -maxdepth 1 -type d -empty -exec echo {} is empty. \;
      ;;
    h)
      echo
      echo "NAME"
      echo "    Content_Check"
      echo
      echo "DESCRIPTION"
      echo "    Helps on searching for C archives, Makefiles and libraries starting at the path passed as input [-i]."
      echo "    Useful when last-chacking full C projects before git pushing [see git]."
      echo
      echo "SYNTAX" >&2
      echo "                     content_check [-i path] [-f] [-e]..." >&2
      echo
      echo "       -i /dir       - Input folder." >&2
      echo "       -c            - Searches for C archives only. [.c] " >&2
      echo "       -l            - Searches for libraries only. [.h]" >&2
      echo "       -m            - Searches for Makefiles only. [Makefile]" >&2
      echo "       -f            - Searches for C archives, Makefiles and libraries." >&2
      echo "       -e            - Searches for empty folders." >&2
      echo "       -h            - Help." >&2
      echo
     ;;
    ?)
      echo
      echo "    Usage:       bash content_check.sh  [-i path] [-c] [-l] [-m] [-f] [-e] [-h]" >&2
      echo "    Try:         bash content_check.sh -h for more details." >&2
      echo
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"
