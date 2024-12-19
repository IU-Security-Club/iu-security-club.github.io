---
title: bash => crash course commands
author: "phulelouch"
description: "A list of useful bash commands and some tips and tricks to help you become more efficient using the bash shell."
tags:
    - bash
    - shells
    - cli
---

> _The below content was included as part of the 0x02 session: `#!/bin/bash => a crash course in bash`._

# Useful commands

You'll never be able to memorise every single command for everything, but these are pretty major ones for most things.

| command | category | purpose |
|:-------:|:--------:|:--------|
| `cd` | `navigation` | **change directory**, allows the user to move around the shell to different locations in the filesystem. |
| `pwd` | `navigation` | **print working directory**, notifies the user of the current directory that the shell is in. |
| `cp` | `files` | **copy**, copies files in a `<source>` `<destination>` type format. |
| `ls` | `files` | **list**, lists the current files. Also try: `ls -l`, and `ls -la` for more informative versions. |
| `rm` | `files` | **remove**, this isn't "put it in the recycle bin", this is destroy off the face of the earth, it doesn't come with an undo method, so _be careful_. |
| `touch` | `files` | **modify timestamps**, techincally this is the intention of the command, but it also is useful just for creating empty files (e.g: `touch blah` creates a file called `blah`). |
| `apt` | `software` `updates` | [**advanced package tool**](https://manpages.ubuntu.com/manpages/xenial/en/man8/apt.8.html), used to keep the system up to date. There are many subcommands for this tool. `apt update`, `apt upgrade`, `apt install` are a few handy ones. |

and [many](https://www.tecmint.com/51-useful-lesser-known-commands-for-linux-users/), [many](https://fossbytes.com/a-z-list-linux-command-line-reference/), [more...](https://www.howtoforge.com/linux-commands/)

<br/><br/>

### Resources

_If you are interested in finding out more or doing your own research, here are some potential starting points. None of these are mandatory reading and going through all of them in detail is definitely overkill._

| resource | description |
|:--|:--|
| [ss64: Bash Hotkeys](https://ss64.com/bash/syntax-keyboard.html) | A very established cheatsheet with `bash` key combinations. |
| [Red Team Field Manual](https://doc.lagout.org/rtfm-red-team-field-manual.pdf) | Lots of security related commands in here, also Windows and Linux-based so check that you're using the right ones on the right systems. |
| [Ryan's Tutorials: Linux Basics](https://ryanstutorials.net/linuxtutorial/) | Basically a lot of things from the talk, but much more fleshed out and more in depth. Also has other important information. |
| [Ryan's Tutorials: Bash Scripting](https://ryanstutorials.net/bash-scripting-tutorial/) | A tutorial dedicated specifically to `bash` scripting. |
| [TLDP: Bash Programming](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html) | A good introduction into scripting. |
| [Linuxjournal: Bash Tips and Tricks](https://www.linuxjournal.com/article/7385) | Pretty short and sweet, has good explanations of _brace expansion_ and _command substitution_ which are both handy to know. |

<br/><br/>

### Off the beaten path

| resource | description |
|:--|:--|
| [tmux cheatsheet](https://tmuxcheatsheet.com/) | A reference guide for `tmux` commands. `tmux` stands for terminal multiplexer and is a very handy tool for being able to multitask inside a single terminal window. An alternative to `tmux` is `screen`, but it appears to be harder to get used to, so `tmux` is the recommendation here.

<br/><br/>

### Some other things that haven't been covered to look up yourself and try to understand:
- Fundamentals of Linux (a lot of this gets covered in first year coursework which is why it has been left out of this presentation).
  - File permissions, what they mean and how to modify them safely.
  - Networking (IP addresses, ports, protocols, etc.)
- The meaning and potential consequences of `sudo`.
- How to install and uninstall software in your distribution of Linux.
- How to use `ssh` to connect to remote machines.
  - How to setup key-based ssh authentication (this can save on typing in passwords all the time. == handy)

<br/><br/>

### Some things to keep in mind:
- Don't rush.
- You don't have to know all of this or even any of it unless you want to.
- If you keep at it, you will keep learning something new.
- Pace yourself
- Stick to what you know when it matters, and find out what you don't when it doesn't.