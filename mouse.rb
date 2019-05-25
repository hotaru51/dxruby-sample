require "dxruby"

sio = Image.load('sio.png')
cutSio = sio.slice(50, 50, 100, 100)
x = 0
y = 0

Window.loop do
  x = Input.mouse_pos_x - 50
  y = Input.mouse_pos_y - 50
  font = Font.new(32)

  Window.draw(x, y, cutSio)
  Window.draw_font(100, 200, "text", font)

  if Input.key_push?(K_ESCAPE)
    break
  end

end
