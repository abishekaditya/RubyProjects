#!/usr/bin/ruby -w 
class Song
  attr_reader :name, :artist #for using variables as methods
  def initialize(n,a)
    @name=n
    @artist=a
  end
  def artist=(new_val)    #setter method sets values of artist
    @artist=new_val
  end
end

mysong = Song.new("rap god","eminem")
mysong.artist = mysong.artist.capitalize
#mysong.name = mysong.name.capitalize won't work as no attr_writer declared like for artist
puts "#{mysong.name} by #{mysong.artist}"
