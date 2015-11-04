-- SceneManager

-- Created by: Mr Coxall.
-- Created on: Nov 2013.
-- Created for: ICS2O, used by me for this app.
-- This file lets you easily manage different scenes.
--     Original code from Brainfox, off the Codea forums.

Scene = {}
local scenes = {}
local sceneNames = {}
local currentScene = nil
displayMode(FULLSCREEN)

setmetatable(Scene,{__call = function(_,name,cls)
  if (not currentScene) then
      currentScene = 1
  end
  table.insert(scenes,cls)
  sceneNames[name] = #scenes
  Scene_Select = nil
end})

--Change scene
Scene.Change = function(name)
 currentScene = sceneNames[name]
  scenes[currentScene]:init()
  if (Scene_Select) then
      Scene_Select = currentScene
  end
  collectgarbage()
end

Scene.Draw = function()
  pushStyle()
  pushMatrix()
  scenes[currentScene]:draw()
  popMatrix()
  popStyle()
end

Scene.Touched = function(t)
  if (scenes[currentScene].touched) then
      scenes[currentScene]:touched(t)
  end
end

Scene.Keyboard = function()
  if (scenes[currentScene].keyboard) then
      scenes[currentScene]:keyboard(key)
  end
end

Scene.OrientationChanged = function()
  if (scenes[currentScene].orientationChanged) then
      scenes[currentScene]:orientationChanged()
  end
end






