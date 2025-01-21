---
permalink: /kb/contributing
layout: content
title: How to contribute to the Knowledge Base
simple: true
date: 2025-01-22
author:
    - phulelouch
---
*(Or any git project for that matter...)*

*- Written by [@phulelouch](/kb/profiles/phulelouch)*

If you get stuck with any of the steps below, don't hesitate to shout out on #devops for a hand, there are plenty of people willing to help!

**Note:** Anywhere that you see the `<` or `>` characters, those are for you to swap out with something (do not keep the brackets).

### Prerequisites
For this recipe we are going to need a few basic ingredients:
* You will to [create a Github account](https://github.com/join) if you don't have one already.
* Make sure you have `git` [installed on your computer](https://gist.github.com/derhuerst/1b15ff4652a867391f03).
* A working internet connection.
* 10 minutes of free time.

<br class="spacer"/>

### Set up a local working copy
First we need to [fork](https://help.github.com/en/articles/fork-a-repo) the official Github repository so that we can develop our new features under our own account.

* Browse to the [iu-security-club.github.io repository](https://github.com/IU-Security-Club/iu-security-club.github.io/), and click the *Fork* button.

* Copy the URL for your newly forked repository (make sure you're copying your personal repository, not the URL for the official one).

* Now in a terminal, use the `git clone` command to download a copy of your new forked repository.
```
git clone <YOUR URL>
```

* Change directories into your newly created local repo
```
cd iu-security-club.github.io
```

### Add your profile to the KB
First thing's first, lets add your personal profile to the KB so that your article will link to your deets, and people can easily find all of your awesome contributions!
* Start by creating a new branch for the feature you're adding.
*It is good practice to never push straight to the master branch. Name your new branch something that makes sense.*
```
git checkout -b new_profile
```

* Create a new text file in your preferred text editor, and copy the template below into it:


---
# THIS IS A TEMPLATE FOR A PROFILE, PLEASE COPY THIS FILE AND THEN MAKE CHANGES TO YOUR COPY.
# DON'T REMOVE THIS FILE.

title: "Author Name"
# external_url: <a URL somewhere you want your profile to link to>
# twitter: <twitter handle>
# github: <github handle>
# htb: <hackthebox id number>

published: false # remove this line to make sure your profile gets published.
---
You can write a bit about yourself here.


* Edit the various fields between the `<>` characters with your own details. Don't worry if you don't have a twitter or htb account, just leave them blank for now!

* Save it under the `content/_profiles/` directory, named `<your handle>.md`

* Index the new file you've just created, staging it for the next commit.
```
git add -A
```

* Commit your changes to your branch, with a meaningful message for the changes you have made.
```
git commit -m "added <your handle> kb profile"
```

* Now push the changes to your remote origin repository! (Enter your github username & password when prompted)
```
git push origin <branch name>
```

### Make that pull request!

Finally, make a pull request to the upstream repository. This is a request for the maintainers of the official repository to accept your changes and merge them into the main repo!

* Browse to your forked repository (same URL that you `git clone`'d), make sure your new branch is selected, then hit "New pull request"

* Fill in a meaningful title & description, review the changes you are pushing by scrolling down, then finally hit the "Create pull request" button!

Once your pull request has been made, you will have to wait until one of the official maintainers approves the request to merge your branch into the upstream repository. So sit tight, they'll get to it soon!

<br class="spacer"/>
