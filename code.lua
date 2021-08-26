--Автор программы: nordway
--Author: nordway
--Ссылки--Links: https://github.com/nordway-govnocoder/

local cmp = require "component"
local holo = cmp.hologram
local keyboard = require "keyboard"

print("Hold Ctrl + W to exit")

scale = {
  x = 0.3,
  y = 0.3,
  z = 0.5,
  time = 0.5
}

function clamp(num, min, max)
  if num <= min then
    return min
  end
  if num >= max then
    return max
  else
    return num
  end
end

holo.clear()
holo.setPaletteColor(1, 0xFF8800)
holo.setPaletteColor(2, 0x00FF88)
holo.setPaletteColor(3, 0x8800FF)

time = 0

while true do
holo.clear()
time = time + scale.time
for x = -24*scale.x, 24*scale.x, scale.x do
  for y = -24*scale.y, 24*scale.y, scale.y do
  zl = z
--Вводить формулу сюда--Enter equation here--
---------------------------------------------
    z = math.sin(x + time) + math.cos(y)
---------------------------------------------
--Доступные переменные--Available variables: x, y, time

    holo.set((x/scale.x)+24, clamp((z/scale.z)+16, 1, 32), (y/scale.y)+24, math.abs(1+z%3))
  end
end
os.sleep(0.5)
      if keyboard.isKeyDown(keyboard.keys.w) and keyboard.isControlDown() then
        os.exit()
      end
end
