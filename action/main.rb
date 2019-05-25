require 'dxruby'
require './Character.rb'

Window.width = 640
Window.height = 480
Window.fps = 30

characters = [Character.new()]

Window.loop do
  if Input.key_push?(K_ESCAPE)
    break
  end

  Sprite.update(characters)
  Sprite.draw(characters)
end
