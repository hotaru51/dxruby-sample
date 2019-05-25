require 'dxruby'

class MySprite < Sprite
  @@image = Image.load('sio.png', 50, 50, 100, 100)

  def initialize
    super
    self.x = 0
    self.y = 0
    self.image = @@image
  end

  def update
    self.x += 1
    self.y += 1
    self.angle += 1
  end
end
