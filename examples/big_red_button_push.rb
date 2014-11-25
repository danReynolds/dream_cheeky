#!/usr/bin/ruby
require 'dream_cheeky'
require 'launchy'

countdowns = ["https://www.youtube.com/watch?v=rT4p7nAOEV0", "http://youtu.be/TcJ-wNmazHQ?t=13s", "http://youtu.be/zRGeLQkWuYk?t=25s"]
DreamCheeky::BigRedButton.run do
  open do
    puts "Preparing to deploy."
    Launchy.open countdowns .sample
  end

  push do
    puts "Push it!"
    %x[xdotool mousemove_relative 0 0 click 1]
  end

  close do
    puts "Well done Gents."
  end
end
