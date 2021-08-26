-- Globals
package.path = GetScriptsDir() .. "TSSM/TSSM_Core.lua"
local core = require "TSSM_Core"

function onScriptStart()
    if not core.gameIsTSSM() then
        CancelScript()
    end
end

function onScriptCancel()
    SetScreenText("")
end

function onScriptUpdate()
    x_vel = core.getPattyWagonXVelocity()
    y_vel = core.getPattyWagonYVelocity()
    z_vel = core.getPattyWagonZVelocity()
    speed_ignoring_vertical = math.sqrt(x_vel * x_vel + z_vel * z_vel)
    speed = math.sqrt(x_vel * x_vel + y_vel * y_vel + z_vel * z_vel)

    text = ""
    text = text .. "Patty Wagon\n\n"
    text = text .. string.format("X Velocity: %.6f\n", x_vel)
    text = text .. string.format("Y Velocity: %.6f\n", y_vel)
    text = text .. string.format("Z Velocity: %.6f\n", z_vel)
    text = text .. string.format("Total Speed (ignoring Y): %.6f\n", speed_ignoring_vertical)
    text = text .. string.format("Total Speed: %.6f\n", speed)
    text = text .. string.format("Max Drive Speed: %.1f\n", core.getMaxPattyWagonSpeed())
    text = text .. string.format("Max Reverse Speed: %.1f\n", core.getMaxPattyWagonReverseSpeed())  
    text = text .. string.format("Nitro Count: %d\n", core.getNitroCount())
    text = text .. string.format("Nitro Time Remaining: %.3f\n", core.getNitroTimeRemaining())    

    SetScreenText(text)
end