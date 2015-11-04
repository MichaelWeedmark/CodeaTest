-- made by Michael Weedmark

Play = class()

local startTime = 0

function Play:init()
  -- you can accept and set parameters here

end

function Play:draw()
    fill(255, 255, 255, 255)
    fontSize(200)
    font("Inconsolata")
  -- Codea does not automatically call this method
   displayMode(FULLSCREEN_NO_BUTTONS)
   supportedOrientations(LANDSCAPE_ANY)
   background(0, 0, 0, 255)
   text("Elite 2D", WIDTH/2,HEIGHT/2)
   startTime = startTime + 1

   if (startTime > 160) then
      Scene.Change("MainMenu")
   end

end

