# -*- coding:utf-8 -*-
require 'io/console'

STDIN.noecho{ |io| # エコーバックを無効化して、文字を表示されないようにする。
  s = ""
  loop do
    c = STDIN.raw(&:getc) # rawモードでgetcを呼ぶ
    break if c == "\r" # Enterで入力終了とする
    s += c
    putc '*' # 代替文字を表示する
  end
  s
}
