---
title: Fix the cell towers / Wi-Fi location on Android
author: Alexandre Berthaud
tags: android,tip
description: Sometimes, location by cell towers / wifi starts to fail, here's how to fix it
---

This problem happened to me on both my old HTC Wildfire (Android 2.3) and on my
current HTC One S (Android 4.1). To keep the trolls away, I know it also
happened recently on a friend's Galaxy S3.

Location by cell towers / Wi-Fi fails either completely or reports really bogus
locations, GPS still works though. Disabling / enabling location doesn't work,
rebooting neither. Annoying.

Fixing it is quite simple: you need to go in Settings > Apps, find "Google
Services Framework", force stop it, then clear its data. All you need to do now
is to reboot your phone. It should then ask you if you want to enable
geolocation.

There, fixed! :)
