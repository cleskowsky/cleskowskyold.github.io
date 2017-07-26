---
layout: post
title: "Production Friendly Services"
tags: operations
---

# About

Putting a service in production is among the most important things SREs do and should always involve careful planning and preparation. (Otherwise it probably isn’t that important which begs the question: why are we even putting this into production in the first place?)

Operating complex, distributed systems in production is a topic I’m especially interested in these days, and on occasion, I collect notes about it.

# Monitoring

- Does your new service come with a health dashboard?
  - Link please !
  - Some things to show: host, application metrics + any metrics extracted from log events
- Have notifications been setup around key metrics that impact customer experience when performance thresholds are crossed? (Alerts, 3 levels: observed, important (24hr resolution SLO), emergency fix now (Broken SLA))

# Documenting a service

Who owns it and who knows the most about it if these aren’t one and the same person. Include contact info – email, phone, etc – and any alternate contacts.

- Include an Architecture diagram, and
- Any dependent services (eg If service A fails, and my service depends on A my service fails.), as well as
- Instructions, details how we might stop and start it, and finally
- Is there any special performance related config? (eg load shedding, function disabling, …)

# Documenting a service – Logs

- Where are they?
- Are they being rotated?
- Are they being collected centrally?

# Documenting a service – Runbooks

- List of standard operational tasks (daily, weekly, monthly)
- How to recover from failures we can predict
- A process to document ones we didn’t

# Testing

- Unit, Integration, UAT
- Load, performance, stress

# What do you do if…

- You get 10x more traffic than expected day 1 <- think about a scaling strategy

# The 12 Factor Criteria

# JA Micro (Sixt)

Services …

- Are delivered to prod in containers (Or fat jars for Java)
- Get configuration values from the process environment
- Log using a standard log format (json, structured, machine readable)
- Report application state, computation progress as metrics (counters, timers, gauges)
- Provide an external endpoint for health checks (Am I healthy right now?, http)
- Provide test components

# Links

- [Etsy.com](https://www.etsy.com)
- [Guidelines from Sixt (JA Micro)](https://github.com/Sixt/ja-micro)
- [12 Factor Apps](https://12factor.net/)