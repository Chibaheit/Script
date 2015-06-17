#!/usr/bin/ruby
# coding: utf-8

def createFile(outPath, tools = 'm')
  oriPath = "/Users/chiba/Documents/Script/Module" + File.extname(outPath)
  if !File.file?("./#{outPath}")
    extName = File.extname(outPath)
    if extName == '.v' or \
       extName == '.cpp' or \
       extName == '.cc' or \
       extName == '.py' or \
       extName != '.rb'             
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
  end
  if tools == 'v'
    exec "vim #{outPath}"
  else
    `mate #{outPath}`
  end
end

createFile(ARGV[0].to_s, ARGV[1])
