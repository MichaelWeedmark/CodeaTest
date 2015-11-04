-- Created by: Mr Coxall
-- Created on: Nov 2013
-- Created for: ICS2O
--
-- This class simplifies the process of checking if a sprite button is pressed or not
-- Then you can ask the sprite if it is being touched or was ended.
-- Parameters to pass in:
--  1. Untouched button image name
--  2. Touched button image name
--  3. A vector2 that is the location of the button

NewButton = class()

function NewButton:init(buttonImageName, touchedButtonImageName, buttonPosition)
  -- you can accept and set parameters here

  self.buttonImageName = buttonImageName
  self.touchedButtonImageName = touchedButtonImageName
  self.currentImageName = self.buttonImageName
  self.buttonLocation = buttonPosition or vec2(512,315)
  self.buttonState = nil
  self.buttonImageSize = vec2(spriteSize(self.buttonImageName))
  self.selected = false
end

function NewButton:checkTouching(touchPosition)
  -- check if the touch events are located inside the button
  print(self.buttonImageName)

  if( (self.buttonLocation.x - self.buttonImageSize.x/2) < touchPosition.x and
      (self.buttonLocation.x + self.buttonImageSize.x/2) > touchPosition.x and
      (self.buttonLocation.y - self.buttonImageSize.y/2) < touchPosition.y and
      (self.buttonLocation.y + self.buttonImageSize.y/2) >
touchPosition.y ) then
          return true
      else
          return false
      end
end

function NewButton:draw()
  -- Codea does not automatically call this method

  pushStyle()
  pushMatrix()
  noFill()
  noSmooth()
  noStroke()

  sprite(self.currentImageName, self.buttonLocation.x, self.buttonLocation.y)

  popMatrix()
  popStyle()
end

function NewButton:touched(touch)
  -- Codea does not automatically call this method

  -- local varaibles
  local currentTouchPosition = vec2(touch.x, touch.y)

  -- reset touching variable to false
  self.selected = false

  if (touch.state == BEGAN) then
       if( (self.buttonLocation.x - self.buttonImageSize.x/2) <
currentTouchPosition.x and
          (self.buttonLocation.x + self.buttonImageSize.x/2) >
currentTouchPosition.x and
          (self.buttonLocation.y - self.buttonImageSize.y/2) <
currentTouchPosition.y and
          (self.buttonLocation.y + self.buttonImageSize.y/2) >
currentTouchPosition.y ) then

          self.currentImageName = self.touchedButtonImageName
          --print("Now touching! - began")
      else
          self.currentImageName = self.buttonImageName
          --print("Not touching - began")
      end
  end

  if (touch.state == MOVING) then
      if( (self.buttonLocation.x - self.buttonImageSize.x/2) <
currentTouchPosition.x and
          (self.buttonLocation.x + self.buttonImageSize.x/2) >
currentTouchPosition.x and
          (self.buttonLocation.y - self.buttonImageSize.y/2) <
currentTouchPosition.y and
          (self.buttonLocation.y + self.buttonImageSize.y/2) >
currentTouchPosition.y ) then

          self.currentImageName = self.touchedButtonImageName
          --print("Now touching! - moving")
      else
          self.currentImageName = self.buttonImageName
          --print("Not touching - moving")
      end
  end

  if (touch.state == ENDED) then
      if( (self.buttonLocation.x - self.buttonImageSize.x/2) <
currentTouchPosition.x and
          (self.buttonLocation.x + self.buttonImageSize.x/2) >
currentTouchPosition.x and
          (self.buttonLocation.y - self.buttonImageSize.y/2) <
currentTouchPosition.y and
          (self.buttonLocation.y + self.buttonImageSize.y/2) >
currentTouchPosition.y ) then

          self.currentImageName = self.buttonImageName
          self.selected = true
          --print("Activated button")
      else
          self.currentImageName = self.buttonImageName
          --print("Not touching - ended")
      end
  end
end




