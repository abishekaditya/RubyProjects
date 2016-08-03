#!/usr/bin/ruby

require 'nokogiri'

@doc = Nokogiri::XML(File.open("shows.xml"))
puts @doc.xpath("//sitcom")
