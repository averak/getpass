# -*- coding:utf-8 -*-
require 'io/console'

def getpass(prompt:["id", "password"], is_echo:[true, false],
            display_tail: true, sub_char:"*")
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
          if display_tail
            sub_str = ret[i].chars.map {|c| c}
            print "\e[#{ret[i].length}D#{ret[i]}\e[1C"
          else
            putc sub_char
          end
          #ret[i] += c
          #putc sub_char
        end
      }
      print "\n"
    end
  end

  ret
end

getpass
