---
layout: page
title: Ops
permalink: /ops/
---

# Mikey Dickerson Hierarchy

![Service reliability hierarchy]({{ site.url }}/images/service_reliability_hierarchy.png)

# Resilient Systems

![resilient systems]({{ site.url }}/images/resilience-in-complex-adaptive-systems.jpeg)

# Books

These books have influenced my thinking immensely. Thanks so much to their respective authors.

- [The Practice of Cloud System Administration: DevOps and SRE Practices for Web Services, Volume 2](https://www.amazon.ca/Practice-Cloud-System-Administration-Practices/dp/032194318X/ref=sr_1_1?keywords=cloud+system+administration&qid=1556103967&s=gateway&sr=8-1)

# Agile

Stories should be written to fit INVEST criteria:

- Independent : One story doesn't depend on another (relates to no technical stories!). Any one story could be the next. The customer has the final say
- Negotiable : A story is a promise to communicate not something that is set in stone
- Valuable : Stories are small enough to be delivered to customers at a reasonable cadence. The customer can see that there is momentum and they can effect outcomes but choosing when gets done. This creates engagement
- Estimate-able : You should have some sense of how long a thing will take. If you're not confident, research is required
- Small : Much less than a full sprint. I've found a day's worth of effort to be good
- Tested : How do you know you're done?

[source](http://agileinaflash.blogspot.com/2009/02/invest.html)

# Alerting

Interrupting humans is expensive. (Urgent things are stressful and we’re not doing the thing we actually want done.) Ideally we avoid poking people unless a human actually should get involved, and we provide as much context as we can to get started with looking into a problem. (eg Here’s the detected condition, here’s the alarm that fired, here’s how to go about investigating …)

Every alert should:

- Have rich Context
- Be Actionable
- Be Symptom related
- Be regularly Evaluated. Is this alert still relevant

CASE

[source](http://onemogin.com/monitoring/case-method-better-monitoring-for-humans.html)

# Production Readiness

A few things I’ve found that help guide a conversation with developers around what operating a service in production will be like:

- What is the service criticality? If it’s down, should we wake someone up? Who?
- What are the service key metrics? Which indicators tell us something interesting is happening? Are these metrics being collected?
- Is it well tested? Is a CI job setup and running builds and tests often? (Automated tests – units, functional, integration, performance, security, visual.)
- Are logs and exceptions collected? Do we need a rotation policy?
- Is there data that should be backed up?
- Has a security review happened? Threat modelling?
- Should we think about ETL?
