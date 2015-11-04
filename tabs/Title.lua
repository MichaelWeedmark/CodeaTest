-- --made by Michael Weedmark

Title = class()

local startTime = 0

function Title:init()
   -- you can accept and set parameters here
   supportedOrientations(LANDSCAPE_ANY)
   displayMode(FULLSCREEN_NO_BUTTONS)
end

function Title:draw()
  -- Codea does not automatically call this method
  background(0, 0, 0, 255)
  sprite("Dropbox:Logo", WIDTH/2,HEIGHT/2,WIDTH*4,HEIGHT*4)
  startTime = startTime + 1

  if (startTime > 160) then
      Scene.Change("play")
  end
end
