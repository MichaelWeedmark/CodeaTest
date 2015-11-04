About = class()

function About:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function About:draw()
    sprite("Dropbox:space", WIDTH/2, HEIGHT/2, 1024, 762)
    -- Codea does not automatically call this method
end

function About:touched(touch)
    -- Codea does not automatically call this method
end
