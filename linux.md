---
layout: page
title: Linux
permalink: /linux/
---

# CentOS/7, redhat

List installed packages

```bash
yum list installed
```

# Perf

## Pidstat

Like top but with a rolling output display mode so that I can see historical task resource utilization - from when I started observing - in addition to real-time, right now.

```bash
pidstat 2 5 # returns 5 samples taken at 2s intervals
```

## First 60,000 milliseconds (Netflix)

```bash
# load averages
uptime

# kernel messages can be helpful sometimes
dmesg | tail

# rolling process, memory stats
vmstat 1

# rolling cpu states on multicore systems
mpstat -P ALL 1

# rolling ps aux (only shows non-idle processes)
pidstat 1

# rolling disk performance metrics
iostat -xz 1

# available memory, used, swap
free -m

# network visibility
sar -n DEV 1
sar -n TCP,ETCP 1

# running processes in a system
top
```
