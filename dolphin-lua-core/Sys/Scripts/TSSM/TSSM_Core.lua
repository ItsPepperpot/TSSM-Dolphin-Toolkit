local core = {}

--- the game ID.
core.game_ID = ReadValueString(0x0, 6)

--- returns whether the game being run is The SpongeBob SquarePants Movie.
local function gameIsTSSM()
    local valid_game_IDs = {"GGVE78", "GGVP78", "GGVD78", "GGVX78"}
    for index, value in ipairs(valid_game_IDs) do
        if value == core.game_ID then
            return true
        end
    end
    return false
end
core.gameIsTSSM = gameIsTSSM

--- returns the current Goofy Goober token count
local function getTokenCount()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AF83F)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getTokenCount = getTokenCount

--- returns SpongeBob's current health
local function getSpongeBobHealth()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AE9E3)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getSpongeBobHealth = getSpongeBobHealth

--- returns SpongeBob's maximum health
local function getSpongeBobMaxHealth()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AE9E7)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getSpongeBobMaxHealth = getSpongeBobMaxHealth

--- returns Patrick's current health
local function getPatrickHealth()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AEE53)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getPatrickHealth = getPatrickHealth

--- returns Patrick's maximum health
local function getPatrickMaxHealth()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AEE57)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getPatrickMaxHealth = getPatrickMaxHealth

--- returns the Manliness Points count
local function getManlinessCount()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue32(0x804AF834)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getManlinessCount = getManlinessCount

--- returns the player x,y,z position
local function getPlayerPos()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return {X=ReadValueFloat(0x803F9BB8), Y=ReadValueFloat(0x803F9BBC), Z=ReadValueFloat(0x803F9BC0)}
    elseif core.game_ID == "GGVD78" then
        return {X=0.0, Y=0.0, Z=0.0}
    end
    -- GGVX78
    return {X=0.0, Y=0.0, Z=0.0}
end
core.getPlayerPos = getPlayerPos

--- returns SpongeBob's damage animation (1-5)
local function getSpongeBobDamageAnim()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804B036B)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getSpongeBobDamageAnim = getSpongeBobDamageAnim

--- returns Patrick's damage animation (0-2)
local function getPatrickDamageAnim()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804B120F)
    elseif core.game_ID == "GGVD78" then
        return 0
    end
    -- GGVX78
    return 0
end
core.getPatrickDamageAnim = getPatrickDamageAnim

--- returns whether Ice Physics Glitch (IPG) is active.
local function IPGIsActive()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValueFloat(0x804AF368) == 0.0
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.IPGIsActive = IPGIsActive

--- returns whether the player is single-jumping.
local function getSingleJumpState()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AF80B)
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.getSingleJumpState = getSingleJumpState

--- returns whether the player is double-jumping.
local function getDoubleJumpState()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AF80F)
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.getDoubleJumpState = getDoubleJumpState

local function getControllerInputBitField()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue16(0x80485DA0)
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.getControllerInputBitField = getControllerInputBitField

local function getMaxFPS()
    if core.game_ID == "GGVE78" then
        return 60
    end
    return 50
end
core.getMaxFPS = getMaxFPS

local function setPlayerIsBouncingOnGoo(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return WriteValue8(0x804B1117, value)
    elseif core.game_ID == "GGVD78" then
        return 
    end
    -- GGVX78
    return
end
core.setPlayerIsBouncingOnGoo = setPlayerIsBouncingOnGoo

local function setSpongeBobHealthUpgrades(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return WriteValue8(0x804AE561, value)
    elseif core.game_ID == "GGVD78" then
        return 
    end
    -- GGVX78
    return
end
core.setSpongeBobHealthUpgrades = setSpongeBobHealthUpgrades

local function setPatrickHealthUpgrades(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return WriteValue8(0x804AE562, value)
    elseif core.game_ID == "GGVD78" then
        return 
    end
    -- GGVX78
    return
end
core.setPatrickHealthUpgrades = setPatrickHealthUpgrades

local function getSpongeBobHealthUpgrades(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AE561, value)
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.getSpongeBobHealthUpgrades = getSpongeBobHealthUpgrades

local function getPatrickHealthUpgrades(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804AE562, value)
    elseif core.game_ID == "GGVD78" then
        return nil
    end
    -- GGVX78
    return nil
end
core.getPatrickHealthUpgrades = getPatrickHealthUpgrades

local function setPlayerCanTakeDamage(value)
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return WriteValue8(0x804AE483, value)
    elseif core.game_ID == "GGVD78" then
        return 
    end
    -- GGVX78
    return
end
core.setPlayerCanTakeDamage = setPlayerCanTakeDamage


local function getFPSDivisor()
    if core.game_ID == "GGVE78" or core.game_ID == "GGVP78" then
        return ReadValue8(0x804B0889)
    elseif core.game_ID == "GGVD78" then
        return 1
    end
    -- GGVX78
    return 1
end
core.getFPSDivisor = getFPSDivisor

return core