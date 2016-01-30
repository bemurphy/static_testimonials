require "json"
require "mote"
require "ostruct"

include Mote::Helpers

Dir["data/*.json"].each do |d|
  data = JSON[File.read(d)]
  name = d.match(%r{data/(.+?).json})[1]

  testimonials = data.map { |d| OpenStruct.new(d) }
  html         = mote("testimonials.mote", testimonials: testimonials)

  File.write("testimonials/#{name}.html", html)
end
