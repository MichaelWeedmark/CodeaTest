-- main startup
-- created by michael weedmark
-- febuary, 2014

-- Global variables to the entire app



-- Use this function to perform your initial setup
 function setup()
    
    font("Inconsolata")
    fontSize("20")
    fill(255, 255, 255, 255)
    
  -- name of scenes
  Scene("Title", Title)
  Scene("play", Play)
  Scene("MainMenu", MainMenu)
  Scene("MainGame", MainGame)
  Scene("YouLose", YouLose)
  Scene("AboutScreen",AboutScreen)
  Scene("Inventory",Inventory)
  Scene("Pause",Pause)
  Scene("Dead", Dead)
  Scene("About", About)
  supportedOrientations(LANDSCAPE_ANY)
  displayMode(FULLSCREEN_NO_BUTTONS)
end

-- This function gets called once every frame
function draw()
  -- This sets a dark background color
  background(0, 0, 0, 255)
  -- Do your drawing here
  Scene.Draw()
  font("Copperplate-Bold")
  fill(10, 11, 11, 255)
  fontSize(50)
end

-- This function gets called once every frame
function touched(touch)
  -- Do your drawing here
  Scene.Touched(touch)

end

