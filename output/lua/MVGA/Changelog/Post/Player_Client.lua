
local lastMVGAUpdate = 1532713086   

local menu_was_opened = false
local function GetShouldOpenChangelog()
    if menu_was_opened then
        return false
    end
    menu_was_opened = true
    
    local last =  Client.GetOptionInteger( "lastMVGAUpdate", 0)
    Log("Last viewed MVGA changlog: " .. last)
    if last < lastMVGAUpdate then
        last = os.time(os.date("!*t"))
        Client.SetOptionInteger("lastMVGAUpdate", last)
        return true
    end
    
    return false
end

local oldSendKeyEvent = Player.SendKeyEvent
function Player:SendKeyEvent(key, down)
    oldSendKeyEvent(self, key, down)
    
    if GetShouldOpenChangelog() then
        MainMenu_Open()
        menu_was_opened = true
    end
end