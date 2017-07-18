---
layout: page
title: Python
permalink: /python/
---

# Safari Video: Moderm Python LiveLessons, Raymond Hettinger

## Lesson 1 Basic python for data analytics

Packages: random, statistics, list

    # f strings
    def a():
        b = 1
        print(f'hello, world {b}')

    # Chained comparisons
    # 6 < x < 20
    # used to have to do x < 6 and x < 20

    # list concatenation: [1, 2] + [3, 4] = [1, 2, 3, 4]

    # random numbers
    import random

    random.seed(1)
    print(random.random())

    # can ask for different distributions of random numbers

    # each number in distribution is equally likely
    a = uniform(1000, 1100)

    # says i want a distribution where the middle number is
    # chosen much more frequently than edges
    a = triangular(1000, 1100)

    # normal distribution
    gauss(100, 15)

    # statistics package: a bunch of descriptive statistics
    # functions
    import statistics
    statistics.mean|median|mode|stdev

    # list comprehensions <- given a list of things, compute this function for
    # each thing and return a new set of things
    a = [i*i for i in range(10)]

    # expovariate is a good way to simulate arrival time in a queuing system
    # sometimes you get a burst of data, sometimes much less
    # eg used to simulate packet arrival in a network ...
    # random.expovariate(100)

    # lambda == "make a function"
    # this is how to think about it
    # lambda : x ** y (no args is "freeze" "thaw") computes function later (also promise)
    # lambda x, y: x**y makes a function object

## Lesson 2 Analyzing data using simulations and resampling

Pick up 6.45m in to first module
