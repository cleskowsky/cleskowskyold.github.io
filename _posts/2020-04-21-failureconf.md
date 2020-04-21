---
layout: post
title:  "FailoverConf notes"
tags: conferences 2020
---

Link: https://failover-conf.heysummit.com/

# Reliability Matters More Than Ever

Speaker: Tammy Butow

+ Reliability is feature 0

### How do you start a disaster recovery testing program?

+ what are your top 5 critical systems? focus energy on these
+ identify who's experience will be critical to reliability of the system right now
+ what are the top priorities in the next few months
+ prepare in advance for the day
+ start small
  + can look back at recent incidents for some inspiration when choosing systems to dig into
+ share your results with the rest of the org!

### My top system priorities

+ Security, privacy
+ reliability
+ performance
+ cost
+ usability (development, etc)

# Fight, Flight, or Freeze - Releasing Organizational Trauma

+ Speaker: Matt Stratton
+ [Slides](https://speaking.mattstratton.com/WDbIqO/fight-flight-or-freeze-releasing-organizational-trauma)

### Trauma from previous incidents

Serious stuff. How are we able to function during and post threat situations

+ physical symptoms of fight or flight response
+ adrenaline up, other things the body does to enhance awareness + strength

post traumatic stress : these feelings can be felt whether you're in a life and situation or not 

+ arousal, sympathetic, settle, parasympathetic
+ symptoms of un-discharged traumatic stress

### Hyperarousal == "Being constantly on"
+ Takes energy away from regular work
+ Exhausting for people in an organisation

### vs Hypoarousal
+ glacial freeze
+ overreaction to environmental stimulous

"What are the contributing factors in an incident vs looking for root cause"

![resilient organisations](images/failoverconf/Screen Shot 2020-04-21 at 11.54.01 AM.png)

Why game days : to make people comfortable (calm) in stressful environments. It's not about making people better at debugging. What are your processes like that move events forward and create environments people can operate in. Psychologic safety. "The incident response process is normal. It's fine. Work the problem."

Resilience : not terrific : things aren't happening to you personally, better : here's the way things are and here's what I'll do going forward

If people aren't coming to your postmortems they're probably not great. These should be exciting!

# Improving a Distributed System Post-Incident

+ Speaker: Julius Zerwick
+ Digital Ocean
+ Responisble for IPAM service @ DO (Ip address management)

Critical path for droplets. Sounds like a nightmare :)

Reviewing a specific incident @ DO with the ipam service. High latency causing downstream services to timeout. The teams in the org choose to test before releasing a patch that would change the db isolation level

Load and volume testing was identified as a gap. This is something they had but wasn't a part of their release process. It probably should be

+ Cultural issues are key here. Blamelessness and teamwork during high stress situations
+ Monitoring
+ Test even when under pressure
+ Document design decisions for future generations

# The Future of DevOps is Resilience Engineering

+ Speaker: Amy Tobey

I should probably re-read The Field Guide to Understanding Human Error

# Human-in-the-Loop DevOps

+ Speaker: Taylor Barnett

The description for this talk resonates with me. I have come to the same place. Systems are made up of machines with people and any processes and tools we create for ourselves should take this into account. A skilled operator is a huge asset in a system.

IMG SPECTRUM OF AUTOMATION

[transposit](https://www.transposit.com/) : interactive runbooks

Have a human interact with the automation we're building

+ critical decision points
+ end to end automation vs human involvement

"12. Human practitioners are the adaptable elements of complex systems" Richard Cook, How complex systems fail

How does automation handle an "It depends" situation?

Paper: The Ironies of Automation

Dangers of automation
+ de-skilling people
+ agents do the wrong things

# Pitfalls in measuring SLOs

+ Speakers: Liz Fong Jones, Danyel Fisher

How broken is too broken? Should we be moving faster or slower as a team? How do we make these decisions!?

We should know how users are actually experiencing our product! SLO tells us exactly how many poor experience events as compared to all experience events we'll tolerate before we take action

~4.3 minutes in a month => 99.99% SLO

Honeycomb had an outage in July 2019 that lasted 12 minutes that triggered them to stop and mitigate risk a bit before writing features. A bad build came out of a CI system that was in an experimental mode (errors disabled) that was deployed

Eg slo @ Honeycomb: /home loads in < 250ms and doesn't return an error. This can be visualized as a burn down chart over a rolling time window

It's ok for an error budget to be spent some in time as long as it isn't burning too quickly. Don't necessarily have to wake people up if a budget is going to be fine for 12hrs ...

HC converted paging alarms to slo based ones measuring quality of service to users after they realized these burn down metrics, and error budgets were the best measure they had

Quotables
+ "Don't aim for too many 9s unless you have to. Each 9 is an multiplier is terms of effort and cost to increase reliability to"
+ "People get unhappy when response times go above 150-200ms"

# How to fail with serverless

+ Speaker: Jeremy Daly

Distributed systems defn #1: "A group of networked computers that have to pass messages between eachother"

Distributed systems defn #2: "A system where a computer you never heard of can bring down your application"

# Built-in Application Resiliency

+ Speaker: Allan Shone

Resiliency:
+ fault tolerence, handling of transient issues
+ exhibiting consistent behaviour
+ failure recovery
+ observable
+ adapting to change

# The Halo of Resilience Engineering

+ Speaker: J Paul Reed

Resilience
+ Robustness : how does a thing behave in the presence of specific, small failures
+ Reliability : practices and processes around well known, understood patterns
+ Rebound : after a stretch, the systems reverts to it's original, well known / ordered state
+ Resilience : adaptive, novel, creative

Coping with cognitive load in these strange times
+ Shed load : dump work (make sure you're not dumping something important)
+ Reduce thoroughness : give yourself permission to be less detail oriented than you usually are to relieve pressure
+ Shift work in time : choose to work earlier or later
+ Recruit more resources : ask for help!

He's talking about resilience in us, and communities
+ basic compact : society's rules
+ aligned goals
+ we exhibit predictable behaviours to others (predictability)
+ sustain and repair : if you violate the compact, make sure you mark it, and figure out how to avoid in the future

Interpredictability is hard right now

We aren't going to be able to automate ourselves out of this situation ...