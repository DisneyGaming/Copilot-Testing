hook.Add("PlayerSay", "SayHello", function(ply, text, teamChat)
    if text == "!hello" then
        chat.AddText(Color(255, 255, 255), "Hello, ", ply:Nick(), "!")
        return ""
    end
end)
