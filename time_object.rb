require "time" #necesary for parsing strings

today = Time.now

p today.month
p today.day

puts

#min, sec
p today.hour

# yday -> day of the year; wday -> day of the week

p today.wday
p today.tuesday?
p today.dst?

puts

p today < Time.new(2022)
p today.between?(Time.new(2020), Time.new(2022))

puts

p "sec min hour day moth year ... zone"
p today.to_a

=begin
Date (Year, Month, Day):
  %Y - Year with century (can be negative, 4 digits at least)
          -0001, 0000, 1995, 2009, 14292, etc.
  %C - year / 100 (round down.  20 in 2009)
  %y - year % 100 (00..99)
  %m - Month of the year, zero-padded (01..12)
          %_m  blank-padded ( 1..12)
          %-m  no-padded (1..12)
  %B - The full month name (``January'')
          %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')
          %^b  uppercased (``JAN'')
  %h - Equivalent to %b
  %d - Day of the month, zero-padded (01..31)
          %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)
  %j - Day of the year (001..366)
=end

puts Time.parse("2020-02-25")
puts Time.strptime("03-04-2000","%m-%d-%Y")
