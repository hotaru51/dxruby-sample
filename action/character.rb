require 'dxruby'

class Character < Sprite
  @@image = Image.new(25, 50, C_WHITE)

  def initialize
    super
    self.x = 0
    self.y = Window.height - @@image.height
    self.image = @@image
    @jumpPower = 0
  end

  def update
    # 右移動
    if Input.x < 0
      if self.x > 0
        self.x += -5 
      end
    end

    # 左移動  
    if Input.x > 0
      if self.x < Window.width - @@image.width
        self.x += 5
      end
    end

    # 落下
    self.y += @jumpPower
    @jumpPower += 10

    # ジャンプ
    if Input.key_push?(K_Z)
      @jumpPower = -50
    end

    if self.y >= Window.height - @@image.height
      self.y = Window.height - @@image.height
    end
  end

end
