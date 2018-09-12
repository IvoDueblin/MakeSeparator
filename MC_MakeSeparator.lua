--[[
@description Only when using Commala-theme: Turn track into seperator (TCP & MCP)
@version 1.0
@author Ivo Düblin
@about
  # MakeSeparator
@changelog
  Version 0.2
--]]

local numofTracks = reaper.CountSelectedTracks(0)
local themeName

--themePath, themeName = reaper.BR_GetCurrentTheme()
--reaper.ShowConsoleMsg(themeName .. "\n")


for i=0, numofTracks-1 do
  track=reaper.GetSelectedTrack(0,i)
  
--  if string.find(themeName, "Commala") ~= nil then
--    reaper.GetSetMediaTrackInfo_String(track, "P_MCP_LAYOUT", "MCP Small Separator", true)
--    reaper.GetSetMediaTrackInfo_String(track, "P_TCP_LAYOUT", "TCP Separator", true)
--  elseif string.find(themeName, "REABORN") ~= nil then
    reaper.GetSetMediaTrackInfo_String(track, "P_MCP_LAYOUT", "- Separator - Narrow", true)
    reaper.GetSetMediaTrackInfo_String(track, "P_TCP_LAYOUT", "- Separator", true)
--  end
end

