#!/usr/bin/env ruby

p ENV
while line = STDIN.gets
  p line.spilt(/\s/)
end
