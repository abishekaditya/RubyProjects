#!/usr/bin/env ruby

require 'net/http'
require 'json'
login_uri = URI("https://vitacademics-rel.herokuapp.com/api/v2/vellore/login")
refresh_uri = URI("https://vitacademics-rel.herokuapp.com/api/v2/vellore/grades")
puts "enter regno"
reg_no = gets.chomp
puts "enter dob"
dob = gets.chomp
puts "enter dad no."
phone = gets.chomp
Net::HTTP.post_form(login_uri,'regno' => reg_no, 'dob' => dob, 'mobile' => phone )
token =  Net::HTTP.post_form(refresh_uri,'regno' => reg_no, 'dob' => dob, 'mobile' => phone )
my_hash = JSON.parse(token.body)
puts my_hash
