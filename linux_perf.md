---
layout: page
title: Linux Perf
permalink: /linux-perf/
---

# Tools

## Pidstat

Like top but with a rolling output display mode so that I can see historical task resource utilization - from when I started observing - in addition to real-time, right now.

```bash
pidstat 2 5 # returns 5 samples taken at 2s intervals
```