---
layout: post
title:  "How to Think About Capacity Planning"
tags: tech
---

Notes from and article in Stripe's Increment Managizne Issue 2 ...

# Capacity planning guidance
- practices around infra management start simply and add sophistication by necessity. below a threshold of dollar spend - 1000 in the article - the time might be better spent elsewhere
- getting to fully autoscaled fleet is hard and not often a place many companies need to go
- depending on how long it takes to create infra, this will determine how far in advance you should think about buying and how much of future demand you try to account for - eg 1 month to needed infra means you should buy for 6 months of projected demand
- not everything in a cluster needs the same treatment in terms of care and engineering for scale, ease of operation. identify the critical services and spend your time on those
- throw a cloud cutting party :)
- fave quote : getting capacity plan right is less important than being able to respond to changing demand in a reasonable amount of time
- close second : optimize for a light process that delivers business value not perfection

# Eng practices
- n tier architectures can be easier to scale up, out
- automated conf, deployment are important
- service discovery too : if i'm a deployer, i'd like to say give me all servers running app A that i want to upgrade
- prefer throwing away and replacement over trying to jump in and repair where possible
- use structures that allow you to not care about specifics - eg don't worry about individual webservers use a load balancer
