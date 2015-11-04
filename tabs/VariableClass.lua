VariableClass = class()

function VariableClass:init(x)
    
    -- all in-game objects and items
    
    -------------------------
    -- trading items
    -------------------------
    Sugar = 20
    Alchohol = 25
    Firearms = 100
    Contraband = 500
    NaturalGas = 30
    Food = 30
    Tools = 75
    ShipParts = 200
    Computers = 50
    Alloys = 40
    Liquor = 30
    Machinery = 60
    Luxuries = 100
    Radioactives = 150
    Textiles = 30
    Minerals = 70
    Gold = 200
    Furs = 50
    Platinum = 70
    Gems = 20
    Arsinec = 40
    Copper = 30
    Silicon = 20
    Medicine = 120
    Lithium = 60
    FusionCore = 40
    AntiMatter = 60
    Ore = 20
    Chemicals = 50
    MilitaryProprety = 200
    Vehicles = 200
    BuildingSupplies = 30
    TerreformingEquipment = 100
    LiquidHydrogen = 20
    WarpCores = 200
    Data = 100
    ExoticAnimals = 50
    Plants = 20
    Slaves = 50
    
    --------------------
    -- ship parts
    --------------------
    
    UpgradedEngine = 100
    BatteryChargeRate = 110
    LargerBattery = 75 
    Shields = 300
    StrongerHull = 300
    WarpRate = 200
    RadarUpgrade = 75 
    LandingAssist = 300
    RCSport = 100
    ASAS = 500
    AutoTurret = 1500
    CargoBay = 300
    MissileBay = 200
    XrayLasers = 1000
    BeamWeapons = 1000
    LaaerGuns = 500
    SingularityTorpedo = 3000
    GimbalThruster = 2000
    StrongerLandingLegs = 200
    BodyArmour = 100
    Gsuit = 200
    EfficiantMainFrame = 5000
    AutoPilot = 10000
    
    if UpgradedEngine == true then
        UpgradedEngine = UpgradedEngine + 100
    end
    if BatteryChargeRate == true then
        BatteryChargeRate = BatteryChargeRate + 110
    end
    if LargerBattery == true then
        LargerBattery = LargerBattery + 75
    end
    if Shields == true then
        Shields = shields + 1
    end
    if StrongerHull == true then
        StrongerHull = StrongerHull + 300
    end
    if WarpRate == true then 
        WarpRate = WarpRate + 200
    end
    if RadarUpgrade == true then 
        RadarUpgrade = RadarUpgrade + 75
    end
    
    
    
    
    -------------------------------------------------------------------------
    -- random encounters
    -------------------------------------------------------------------------
    
        
    Enemy = physics.body(POLYGON)
    Enemy = math.random(1,80)
    Mainspaceship = physics.body(POLYGON)
    Station = physics.body(POLYGON)
    Civilian = physics.body(POLYGON)
    Civilian = math.random(1,70)
    Planet = physics.body(CIRCLE)
    Planet = math.random(1,5)
    Star = physics.body(CIRCLE)
    Cargo = physics.body(POLYGON)
    BlackHole = physics.body(CIRCLE)
    BlackHole = math.random(1,200)
    Derilict = physics.body(POLYGON)
    Derilict = math.random(1,100)
    GasGiant = physics.body(CIRCLE)
    GasGiant = math.random(1,20)
    SmallPlanet = physics.body(CIRCLE)
    SmallPlanet = math.random(1,3)
    LargePlanet = physics.body(CIRCLE)
    LargePlanet = math.random(1,10)
    
    Mainspaceship = physics.body
    Enemy = physics.body 
    Station = physics.body
    Civilian = physics.body
    Planet = physics.body
    Cargo = physics.body
    Star = physics.body
    BlackHole = physics.body
    Derilict = physics.body
    GasGiant = physics.body
    SmallPlanet = physics.body
    LargePlanet = physics.body
    
    -- you can accept and set parameters here
    self.x = x
end

function VariableClass:draw()
    -- Codea does not automatically call this method
end

function VariableClass:touched(touch)
    -- Codea does not automatically call this method
end
