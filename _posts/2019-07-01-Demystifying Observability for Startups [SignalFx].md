---
layout: post
title:  "Notes: Observability for startups"
tags: videos aws notes
---

He starts with a couple of ideas that set the stage for everything else:

- observable systems: quality of a system that refers to whether and how an operator is able to determine what is happening inside it by way of looking at visible outputs, and

- observability: tools and practices related to observable systems

How easy is it for an operator to ask questions about what's happening in a running system and find answers? Is an operator restricted in the sorts of things they can ask about? By how much?

## Pillars of a metric system: metrics, logs, traces

Structured logs are great, metrics stored in timeseries databases are also great. :)

Traces seemed like the new kid on the block to me. More important in architectures where control shifts between different processes. Expensive to put in place.

The whole system needs awareness on some level of this capability. A "Correlation id" header that is forwarded along with every request is needed. Can be injected at the edge.

## On metrics

Start with kpis: What is it a business does? (Make shows, books, etc) Count those and make visible. How many shows / whatever are you actually selling in a day? This is what will actually sink you when it dips.

Include things your customer cares about. Latency, and errors certainly. Others?

Slis, slos are tools you can use to help think about these things.

RED: **Metrics that every startup cares about.** Rates (volume), errors, and duration.

USE (Brendan Gregg): Utilization, saturation, errors of underlying hosts. These often correlate with events identified by RED metrics.

## Dashboards

Not too many. Don't go crazy here. They let you see a bunch of different related metrics together in one place but often there are many and nobody knows which to look at or why most of them exist.

## Alarms

Good hygeine here is kinda important. Relates to oncall events, operator burnout / energy / mental state.

Everything page a human receives should be of high quality ...

CASE
- Context heavy
- Actionable
- Symptoms not causes
- Evaluated regularly (Is this thing doing what I want?)
