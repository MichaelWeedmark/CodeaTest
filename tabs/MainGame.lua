MainGame = class()

function MainGame:init(x)
    
    local StarField
    local ProceduralGalaxy
    local LocalMap
    
     c = physics.body(POLYGON,vec2(-10,-10),vec2(40,-10),vec2(40,40),vec2(-10,40), vec2(40,40))
    c.x=WIDTH/2
    c.y=HEIGHT,600
    c.gravityScale=1
    
---------------------------------------
    -- random encounter variables
---------------------------------------

    
    
    -- you can accept and set parameters here
    self.x = x
end

function MainGame:draw()
    background(0, 0, 0, 255)
    sprite("Dropbox:space",WIDTH/2, HEIGHT/2, 1024 , 762)
    
 
    
    stroke(255)
    strokeWidth(2)
    pushMatrix()
    translate(c.x,c.y)
    rotate(c.angle)
    

    line(-50,-50,50,-50)
    line(50,-50,0,0)
    line(0,0,-50,0)
    line(-50,0,-50,-50)  
  
    popMatrix() 
    
    
    ellipse(WIDTH/2,HEIGHT/2,300)
    

    -- Codea does not automatically call this method
end

function MainGame:touched(touch)
    -- Codea does not automatically call this method
end
