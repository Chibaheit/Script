#!/usr/bin/ruby
# coding: utf-8

def openWithPreview(path)
  `open -a Preview #{path}`
end

ARGV.each do |_|
  openWithPreview(_.to_s)
end