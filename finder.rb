#!/usr/bin/ruby -w
class SongList
  attr_reader :songs

  def initialize
    @songs = Array.new
  end

  def append(song)
    @songs.push(song)
    self
  end

  def [](index)
    @songs[index]
  end
  
  def match(title)
    @songs.find { |song| title == song}
  end
end

mycoll = SongList.new
mycoll.append("Bohemian Rhapsody")
songname = "We Will Rock You"
mycoll.append(songname).append("Another One Bites The Dust")
puts mycoll[0].downcase
puts mycoll.match(songname).upcase
puts mycoll.songs
