#!/usr/bin/env ruby

a = Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }
b = Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }

[
  [ 'bob', 'payne', 33],
  [ 'john', 'payne', 30],
  [ 'john', 'x', 10],
  [ 'super', 'x', 33],
].each do |data|
  fname,lname,age = data

  a[lname][fname] = age
  b[fname][lname] = age
end

a.each do |lname,data|
  puts "Family: #{lname}"
  puts
  data.each do |fname,age|
    puts "- #{fname} is #{age}"
  end
  puts
end