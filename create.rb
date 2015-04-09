#!/usr/bin/ruby
# coding: utf-8

def createFile(outPath, tools = 'm')
  oriPath = "/Users/chibahan/Documents/Script/Module" + File.extname(outPath)
  if !File.file?("./#{outPath}")
    `cp #{oriPath} #{outPath}`
    basename = File.basename(outPath, '.*')
    if File.extname(outPath) == '.v'
      `echo '' >> #{outPath}`
      `echo 'module #{basename}(' >> #{outPath}`
      `echo '\t' >> #{outPath}`
      `echo ');' >> #{outPath}`
      `echo '\t' >> #{outPath}`
      `echo 'endmodule' >> #{outPath}`
      `echo '' >> #{outPath}`
    end
  end
  if tools == 'v'
    exec "vim #{outPath}"
  else
    `mate #{outPath}`
  end
end
createFile(ARGV[0].to_s, ARGV[1])