require "dxruby"
require "./MySprite.rb"

s = MySprite.new

Window.loop do
  s.update
  s.draw

  if Input.key_push?(K_ESCAPE)
    break
  end
end
