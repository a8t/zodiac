# Define a method that accepts two arguments representing the day of the month and the month of the year and returns the zodiac sign for that date.
#
# Prompt the user to enter their birth day and month and then display a message to them telling them what their sign is.
#
require 'date'



while true
  puts "What year were you born? Enter as integer."
  user_year = gets.chomp.to_i

  if user_year < 1
    puts "Please enter your birth year as an integer!"
    redo
  end
  break
end

while true
  puts "What month were you born? Enter as int from 1-12"
  user_month = gets.chomp.to_i

  if user_month > 12 || user_month < 1
    puts "Please enter your birth month as an integer!"
    redo
  end
  break
end

while true
  puts "What day of the month were you born? Enter as int from 1-31"
  user_day = gets.chomp.to_i

  if user_day > 31 || user_day < 1
    puts "Please enter your birthday as an integer!"
    redo
  end
  break
end

def zodiac(year,month,day)
  case Date.new(year,month,day).yday
  when 1..Date.new(year,01,19).yday, Date.new(year,12,22).yday..365
    "Capricorn"
  when (Date.new(year,1,20).yday)..(Date.new(year,2,18).yday)
    "Aquarius"
  when (Date.new(year,2,19).yday)..(Date.new(year,3,20).yday)
    "Pisces"
  when (Date.new(year,3,21).yday)..(Date.new(year,4,19).yday)
    "Aries"
  when (Date.new(year,4,20).yday)..(Date.new(year,5,20).yday)
    "Taurus"
  when (Date.new(year,5,21).yday)..(Date.new(year,6,20).yday)
    "Gemini"
  when (Date.new(year,6,21).yday)..(Date.new(year,7,22).yday)
    "Cancer"
  when (Date.new(year,7,23).yday)..(Date.new(year,8,22).yday)
    "Leo"
  when (Date.new(year,8,23).yday)..(Date.new(year,9,22).yday)
    "Virgo"
  when (Date.new(year,9,23).yday)..(Date.new(year,10,22).yday)
    "Libra"
  when (Date.new(year,10,23).yday)..(Date.new(year,11,21).yday)
    "Scorpio"
  when (Date.new(year,11,22).yday)..(Date.new(year,12,21).yday)
    "Sagittarius"
  end
end



puts "You were born on #{user_year}/#{user_month}/#{user_day}. \nThat means your sign is #{zodiac(user_year,user_month,user_day)}"
