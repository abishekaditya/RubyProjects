#!/usr/bin/ruby -w

require 'net/http'

pages = %w( www.rubycentral.com slashdot.org www.google.com )
threads = []

for page_to_fetch in pages
  threads << Thread.new(page_to_fetch) do |url|
    h = Net::HTTP.new(url, 80)
    puts "Fetching: #{url}"
    resp = h.get("/")
    puts "Got #{url}: #{resp.message}"
  end
end
threads.each do |thr| 
  thr.join
end
