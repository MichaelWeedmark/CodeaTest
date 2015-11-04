EnemyClass = class()

function EnemyClass:init(x)
    
    
    
    if Mainspaceship == true then
        
    end
    
    -- you can accept and set parameters here
    self.x = x
end

function Draw()
    translate(x,y)
end