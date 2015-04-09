#!/usr/bin/ruby
# coding: utf-8

def cppCompileAndRun(oriPath, tools = 'n')
  tmpPath = "./tmp"
  tmpDataPath = "./tmp.in" 
  tmpDataOutPath = "./tmp.out"
  if FileTest::exist?(tmpDataOutPath)
    `rm #{tmpDataOutPath}`
  end
  `clang++ -std=c++11 -stdlib=libc++ -w -O2 #{oriPath} -o tmp`
  if $?.to_i == 0
    if tools == 'y'
      puts "Compile the program Successed"
      puts "Then open the output file"
    else
      puts "Enter the input"
    end
  else
    return
  end
  if tools == 'y'
    `#{tmpPath} < #{tmpDataPath} > #{tmpDataOutPath}`
    exec "vim #{tmpDataOutPath}"
  else
    exec "#{tmpPath}"
  end
end

cppCompileAndRun(ARGV[0].to_s, ARGV[1])
