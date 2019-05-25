require "dxruby"

sio = Image.load('sio.png')
cutSio = sio.slice(50, 50, 100, 100)
x = 0
y = 0

Window.loop do
  x =  x + Input.x
  y = y + Input.y

  Window.draw(x, y, cutSio)

  if Input.key_push?(K_ESCAPE);
    break
  end
end
