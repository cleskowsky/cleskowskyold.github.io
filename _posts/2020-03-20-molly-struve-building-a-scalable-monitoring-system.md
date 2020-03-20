---
layout: post
title:  "Srecon 2019: Building a scalable monitoring system"
tags: videos 2019
---

Srecon 2019: Building a scalable monitoring system, Molly Struve

[Video](https://www.usenix.org/conference/srecon19emea/presentation/struve)

The monitoring platform that grew organically over time (can be overwhelmed by the number of different tools): New relic, honey badger (exception reporting), pagerduty, cron, dashboards, elastalert

How alerts were delivered to engineers: slack notifications, sms, email, phone

Alerts inconsistent

* some reported data but didn’t suggest action
* some needed immediate action

Eventually overhauled. Goals of alerting system:

* consolidate monitoring to a single place (what does this mean?)
    * kenna used datadog for this. hooks into all other tools.
    * she’s meaning this in the alert manager sense? using different tools for logs, metrics, traces, etc
* alerts are actionable. (no alert should allowed to be ignored) can put non actionable things away from actionable things.
* alerts are mutable (turn them off when needed … eg when we’ve already acknowledged a problem)
    * for a set period of time (should come back on)
* track alert history. does this condition happen regularly?

Behaviours:

* if an alert goes off you have to acknowledge
* here’s how you mute, and when, and how long, and how to dump alerts that aren’t helpful
    * CASE: context heavy, actionable, symptom based, evaluated
* here’s where the monitoring tool is and how to use it
* developers should help make monitoring better