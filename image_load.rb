require "dxruby"

sio = Image.load('sio.png')
Window.loop do
  Window.draw(100, 100, sio)
end

sio2 = Image.load_tiles('sio.png', 2, 2)
Window.loop do
  Window.draw(100, 150, sio2[1])
  Window.draw(200, 100, sio2[3])
  Window.draw(140, 140, sio2[0])
  Window.draw(130, 200, sio2[2])
end

sio3 = sio.slice(50, 50, 100, 100)
Window.loop do
  Window.draw(100, 150, sio3)
end
