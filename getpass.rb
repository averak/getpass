# -*- coding:utf-8 -*-
require 'io/console'

def getpass(prompt:["id", "password"], is_echo:[true, false],
            sub_char:"*", out_tail:true)
  ## -----*----- 安全なパスワード入力 -----*----- ##
  raise ArgumentError unless prompt.length == is_echo.length
  ret = Array.new(prompt.length)

  prompt.length.times do |i|
    print "#{prompt[i]}："
    ret[i] = ''

    if is_echo[i]
      # エコーバック有り
      ret[i] = gets.strip

    else
      # エコーバック無し
      STDIN.noecho {
        loop do
          c = STDIN.raw(&:getc)
          break if c == "\r"
          ret[i] += c
          if out_tail
            putc c
          else
            putc sub_char
          end
        end
      }
      print "\n"
    end
  end

  ret
end
