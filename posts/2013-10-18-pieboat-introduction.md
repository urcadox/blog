---
title: Pie-Boat: Introduction
author: Alexandre Berthaud
tags: raspberry pi,android,pie-boat
description: Pie-Boat is an home-made boat controlled by a Raspberry Pi
---

I have been working on this really fun project with [David
Guyon](http://david.guyon.me). He and a friend started it a while ago. We are
now taking it to the next level by bringing a Raspberry Pi to the table.

## So, what is the Pie-Boat?

Pie-Boat is… a boat. Well, it is if your definition of a boat is something
that floats and is able to move on water; clearly, though, it doesn't look like
a classic boat at all.

![Pie-Boat](/files/pie-boat.jpg)

## Current state

Currently, the boat itself floats (using big PVC watertight tubes). It has 3
working motors (one needs a little work support-wise) but the 2 on the sides
lack a propeller (not on the picture above).

The goal, obviously, is for these motors to be controlled by the Pi with a PWM
signal (sent to motor control boards). This is going pretty nicely, some
adjustements need to be made, some tests are needed but it's functional.

Plus, they can already be controlled remotely by sending plain text on a socket.

<iframe width="560" height="315" src="//www.youtube.com/embed/gghCkPZ9X3Q"
frameborder="0" allowfullscreen></iframe>

## What is left to do

Currently we have a really basic control, motor by motor. Not very handy to
handle direction. We will have to make some tests once we have the propellers to
find good values to turn efficiently. In the end, the remote should only need to
send a global speed and direction.

Speaking of which, the goal is to have an Android remote (on a device connected
to a WiFi AP on the Pie-Boat) with sliders and/or joystick-like inputs. 

We also intend to publish a full report including all details needed to
replicate the Pie-Boat, this may take a while though. We will probably
start with partial versions published along the way but we will get there
eventually.

## Open Source

Everything will be available on GitHub in [the Pie-Boat
organization](https://github.com/pie-boat).

Right now, there are 2 repos. The first one is the application running on the Pi
(which controls the motors and listens to the remote), the other one is a
very simple networking lib used by the application on the Pi and, soon, by the
remote.

We are using Scala for everything, even for the Android app. It's quite simple
so it should be easily understandable by Java developers and accessible to other
developers.

## Incoming blog posts

This is only an introduction, there will be more blog posts on specific parts of
this project on this blog and on [David's blog](http://blog.david.guyon.me/).
