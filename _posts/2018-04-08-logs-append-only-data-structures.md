---
layout: post
title:  "Logs and Append Only Data Structures"
tags: tech links
---

# Notes

writing happens at a well known place -> the tail end of a file. data is always stored sequentially

writes are first collected and batched in memory in a sorted memtable

in theory reads happen by sequential reads of the file in reverse order. there are ways to optimize this process
- hierarchies of files (old file merging)
- bloom filters can help skip files we know don't have the key we're trying to find
- indexing on top of the file system

disk sympathy : sequential reads are much faster than random reads. reads are easier to scale. batching and writing bigger files is fast. how do you make sure you don't dump a bunch of data you haven't written yet?

storage strategy for many dbs

- kafka
- bigtable
- sqlite4
- rocksdb
- mongo / wiredtiger
- cassandra
- ...

what problems benefit from this model? ("not every problem is log shaped")

# Links

- Paper: bLSM A General Purpose Log Structured Merge Tree
    - http://www.eecs.harvard.edu/~margo/cs165/papers/gp-lsm.pdf
- Ben Stopford : https://www.slideshare.net/ConfluentInc/power-of-the-loglsm-append-only-data-structures
