MainMenu = class()

function MainMenu:init(x)

        r=0
    vx=120
    vy=100
    pol={vec2(0,0),vec2(-100,30),vec2(200,150),vec2(200,100),vec2(200,50)}
    
    sound(SOUND_POWERUP, 23168)
    
    
    Spaceship = "Dropbox:spaceship"
    -- you can accept and set parameters here
    self.x = x
    
   
--------------------------------
    -- The buttons on the menu
--------------------------------
    
    playButton= NewButton("Dropbox:retrobuttonc","Dropbox:retrobuttonc",vec2(WIDTH/3,HEIGHT/10))
    
    loadButton= NewButton("Dropbox:retrobuttonc","Dropbox:retrobuttonc",vec2(WIDTH/1.4,HEIGHT/10))
    
    About = NewButton("Dropbox:retrobuttonc","Dropbox:retrobuttonc",vec2(WIDTH/10,HEIGHT/1.1))


end


function MainMenu:draw()
    background(0, 0, 0, 255)
    
    stroke(255)
    strokeWidth(2)
    
    pushMatrix()
    translate(WIDTH/2,HEIGHT/1.8)
    r=r+0.6
    rotate(r)
    j=#pol
    for z=1,#pol do
        line(pol[z].x-vx,pol[z].y-vy,pol[j].x-vx,pol[j].y-vy)
        j=z
    end

  
        popMatrix()
    
    
 
 
------------------------------------------------------------
    -- the draw function is called on 60 times per second
------------------------------------------------------------
    
    font("Inconsolata")
    fontSize(70)
    fill(255, 255, 255, 255)
    
    text("Elite 2D", WIDTH/2, HEIGHT/1.1)
    
       text("load new game?", WIDTH/2, HEIGHT/4.5)
    
-- drawing the buttons --
    
     playButton:draw()
    loadButton:draw()
    About:draw()
    
    fontSize(30)
    text("yes",WIDTH/3.3,HEIGHT/9)
    text("no",WIDTH/1.45,HEIGHT/9)
    
    
    fontSize(15)
    text("Made by Michael Weedmark",WIDTH/2,HEIGHT/70)
    
end

function MainMenu:touched(touch)
    
      playButton:touched(touch)
      loadButton:touched(touch)
      About:touched(touch)
    
------------------------------------------------------------------------
    -- the touch function is called on whenever the screen is touched
------------------------------------------------------------------------
    
    if (About.selected == true) then
        Scene.Change("About")
        sound(SOUND_BLIT, 6147)
    end
    
      if (playButton.selected == true) then
      Scene.Change("MainGame")
    sound(SOUND_HIT, 6942)
      level = 0
      end
    
    -- Codea does not automatically call this method
end
