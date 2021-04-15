-- Globals
package.path = GetScriptsDir() .. "TSSM/TSSM_Core.lua"
local core = require "TSSM_Core"

-- Change these to true if you want to enable them.
player_can_take_damage = false
player_can_drown_in_goo = false

previous_frame = 0
--previous_frame_sb_health = 3
--previous_frame_pat_health = 3

previous_frame_sb_damage_anim = 0
previous_frame_pat_damage_anim = 0

player_is_damaged = false
damaged_character = 0 --1: sb, 2: pat
oneframe_frame_timer = 0 --counts up after being damaged
player_is_pressing_jump = false
frame_diff = 0

frame_to_press_jump_sb_anim1 = 31
frame_to_press_jump_sb = 29
frame_to_press_jump_pat = 34

total_attempts = 0
successful_attempts = 0
consistency = 0

function onScriptStart()
    if not core.gameIsTSSM() then
        CancelScript()
    else
        previous_frame = GetFrameCount()
        previous_frame_sb_damage_anim = core.getSpongeBobDamageAnim()
        previous_frame_pat_damage_anim = core.getPatrickDamageAnim()
    end
end

function onScriptCancel()
    SetScreenText("")
end

function onScriptUpdate()
    if not player_can_take_damage then
        core.setPlayerCanTakeDamage(0)
    end

    if not player_can_drown_in_goo then
        core.setPlayerIsBouncingOnGoo(0)
    end

    local current_frame = GetFrameCount()
    local current_frame_sb_health = core.getSpongeBobHealth()
    local current_frame_pat_health = core.getPatrickHealth()
    local current_frame_sb_damage_animation = core.getSpongeBobDamageAnim()
    local current_frame_pat_damage_animation = core.getPatrickDamageAnim()
    local status = ""

    if current_frame > previous_frame then
        if current_frame_sb_damage_animation ~= previous_frame_sb_damage_anim and current_frame_sb_health > 0 then
            player_is_damaged = true
            damaged_character = 1
            oneframe_frame_timer = 0
        elseif current_frame_pat_damage_animation ~= previous_frame_pat_damage_anim and current_frame_pat_health > 0 then
            player_is_damaged = true
            damaged_character = 2
            oneframe_frame_timer = 0
        end

        if oneframe_frame_timer >= 120 then
            --reset after 2s
            player_is_damaged = false
            oneframe_frame_timer = 0
        end

        if player_is_damaged and current_frame_sb_health >= 0 then
            oneframe_frame_timer = oneframe_frame_timer + 1



            if core.getControllerInputBitField() & 256 == 256 and oneframe_frame_timer >= 3 then
                player_is_pressing_jump = true
                
                if damaged_character == 1 then
                    if current_frame_sb_damage_animation == 2 then
                        frame_diff = oneframe_frame_timer - frame_to_press_jump_sb_anim1 - 1
                    else
                        frame_diff = oneframe_frame_timer - frame_to_press_jump_sb - 1
                    end
                else
                    frame_diff = oneframe_frame_timer - frame_to_press_jump_pat - 1
                end

                if frame_diff == 0 then
                    successful_attempts  = successful_attempts + 1
                end

                player_is_damaged = false
                total_attempts = total_attempts + 1
                consistency = successful_attempts / total_attempts * 100
            end
        end

        local text = ""
        text = text .. string.format("TSSM One-Frame Practice by Pepperpot\n\n")

        text = text .. string.format("Player can take damage: %s\n", player_can_take_damage and "Yes" or "No")
        text = text .. string.format("Player can drown in goo: %s\n", player_can_drown_in_goo and "Yes" or "No")
        text = text .. string.format("SB Damage Animation: %s [%s]\n", core.getSpongeBobDamageAnim(), (current_frame_sb_damage_animation == 1) and 
        frame_to_press_jump_sb_anim1 or frame_to_press_jump_sb)
        text = text .. string.format("Pat Damage Animation: %s [%s]\n\n", core.getPatrickDamageAnim(), frame_to_press_jump_pat)

        text = text .. string.format("Frames per Second: %.0f\n", core.getMaxFPS() / core.getFPSDivisor())
        text = text .. string.format("No. Frames in Jump Window: %.0f\n\n", 1 * core.getFPSDivisor())

        text = text .. string.format("Consistency:\n")
        text = text .. string.format("%d/%d (%.2f%%)\n\n", successful_attempts, total_attempts, consistency)

        text = text .. string.format("Status:\n")

        if player_is_damaged then
            status = string.format("Damaged! Waiting for jump...\nFrame: %s", oneframe_frame_timer)
        else
            status = "Waiting for damage..."
        end

        text = text .. string.format("%s\n\n", status)

        if total_attempts > 0 then
            text = text .. string.format("Previous Jump:\n")
            if frame_diff == 0 then
                text = text .. "Perfect timing!\n"
            elseif frame_diff < 0 then
                text = text .. math.abs(frame_diff) .. " frames early.\n"
            else
                text = text .. math.abs(frame_diff) .. " frames late.\n"
            end
        end

        text = text .. "\n"

        if player_is_damaged and
        (oneframe_frame_timer == frame_to_press_jump_sb_anim1 and current_frame_sb_damage_animation == 2 and damaged_character == 1) or
        (oneframe_frame_timer == frame_to_press_jump_sb and current_frame_sb_damage_animation ~= 2 and damaged_character == 1) or
        (oneframe_frame_timer == frame_to_press_jump_pat and damaged_character == 2) then
            text = text .. "---------------\n"
            text = text .. "|  JUMP NOW!  |\n"
            text = text .. "---------------\n"
        end


        
        SetScreenText(text)
    
        previous_frame = current_frame
        previous_frame_sb_damage_anim = current_frame_sb_damage_animation
        previous_frame_pat_damage_anim = current_frame_pat_damage_animation
    end
end
