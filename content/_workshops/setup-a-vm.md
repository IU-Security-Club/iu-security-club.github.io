---
title: Getting started with VMs for hacking
description: "Want to get involved in a CTF or practice hacking? You'll probably want a VM! Learn how to get started here!"
author:
    - phulelouch
date: 2019-06-11
tags:
    - beginner
    - vms
    - kali
---

> **Before you start:** _You may find that this takes time and you make mistakes, but that's okay! If you are running into problems and can't figure out how to solve it yourself, drop a line on FB and someone should be able to help out._

## What is a VM?

VM means **Virtual Machine**. As the name suggests, it is a virtual representation of a computer system (hardware is emulated by software). When dealing with VMs there are two kinds of machine, the **host**, and the **guest**. The host machine is the physical hardware (such as a laptop or server), that runs the [hypervisor](https://en.wikipedia.org/wiki/Hypervisor) software which is needed to run the virtualised guest machines inside of it.

Long story short, for the purposes of this workshop:
> **a VM is a _sandboxed_ machine that lives inside your main machine. <br/>This is where you will want to do your security stuff.**

## Why do I want one?

This is useful because you can install a _completely different_ operating system in a **guest** than the one that is run in the **host**. You will probably want to have this ability so that you can conveniently use hacking tools on your laptop without needing to interfere with the current setup of your **host**.

It's also often quite easy to mess things up when you're trying to learn Linux systems for the first time, so virtual machines will allow you to delete and recreate a machine if you make a mistake. _(Keep in mind that deleting a VM is kind of like throwing an entire PC into a dumpster – you'll lose everything)_.

`VMs == isolation, isolation == safety`.

The last thing you want to do is accidentally goof up your everyday system because you were trying to learn something new, only to accidentally backdoor your personal computer :scream:.

## Enter Kali

> _Okay, so we can create virtual machines inside of real machines, so what?_

Well, there's an operating system that exists called [Kali](https://www.kali.org/) which is widely regarded as the most common penetration testing operating system in use. It is preloaded with a large selection of tools that are used to perform all kinds of cybersecurity-related activities.

There are other distributions of Linux that achieve similar goals such as [ParrotOS](https://www.parrotsec.org/), but Kali is probably the best to go with to start out. The reasons are purely because it appears most often in tutorial videos and should make things a little more familiar for absolute beginners. Kali is also the main OS used in cybersecurity virtual learning environments, so it makes sense to pick something that will be used consistently.

## What do I need to get started?

You will need:

- Roughly 2 hours if you want to get it all done in one go (this could vary wildly with internet speed and performance of your machine).
- A machine to install the software and new VM on:
    - with at least 20GB of storage free
    - minimum of 4GB of RAM (ideally at least 8GB)
- Hypervisor software, probably one of either:
    - [VirtualBox (free)](https://www.virtualbox.org/) (Windows + macOS + Linux)
    - [VMWare Workstation (paid)](https://www.vmware.com/products/workstation-pro.html) (Windows + Linux)
    - [VMWare Fusion (paid)](https://www.vmware.com/au/products/fusion.html) (macOS)
- **One** of the following operating system ISO images:
    - [Kali](https://www.kali.org/downloads/) (get the `Kali Linux 64-Bit` version)
    - [ParrotOS](https://www.parrotsec.org/download.php) (Get the `Security` version)


## The steps

1. Download the bits you need: hypervisor + ISO image
2. Install the hypervisor.
3. Once installed, open the hypervisor and create a new machine.
    - Make sure that you allocate at least a minimum of 1GB (hopefully 4GB) of RAM to the VM.
    - To get the software to install the operating system from the iso you downloaded, you need to configure the machine to use that iso file in the virtual CD drive (essentially putting in the IUSEC to install the OS)
4. Now that the VM has been created, it needs to be started up to install the OS into it.
    - On boot, the ISO may give you a choice of either **install** or **graphical install**. If you want to click on things with the mouse, use the keyboard arrows to choose **graphical install**.
5. This is essentially like a normal OS installation, follow all of the prompts (it's _generally_ safe to accept the default values but consider what they mean anyway).

6. **OPTIONAL** Install vm-tools
    - If using VirtualBox, in a terminal window of the virtual machine enter:
        - `apt update`
        - `apt install virtualbox-guest-x11`
        - `reboot`
    - If using VMWare, in a terminal window of the virtual machine enter:
        - `apt update`
        - `apt install open-vm-tools open-vm-tools-desktop`
        - `reboot`

---

> _Too much to read? Here's a youtube video (no affiliation, it's just a decent video)._

<iframe width="560" height="315" src="https://www.youtube.com/embed/XlJ7FsI0wj4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

After following the above instructions / youtube video you should have a working VM.

## Okay, now what?

You can (and should) use this virtual environment for all of your CTFs or hacking practice activities. To be able to get the most out of the system it's probably worth having a good poke around and see what's on there for you to use.
