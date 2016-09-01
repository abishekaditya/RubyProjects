#!/usr/bin/env ruby

#returns execution stack

def a(skip)
    caller(skip)
end

def b(skip)
    a(skip)
end

def c(skip)
    a(skip)
    b(skip)
end

p c(0)
