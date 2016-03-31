#!/usr/bin/ruby -w

def varargs(a, *rest)
  p rest.join(', ')
end

varargs(2,3,5,8,9)
varargs(*[2,3,5,4])
