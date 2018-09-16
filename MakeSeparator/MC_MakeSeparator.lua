--[[
 * ReaScript Name: MC_MakeSeparator.lua
 * Author: Ivo Düblin
 * Licence: 
 * REAPER: 5.0
 * Extensions: None
 * Version: 0.2
--]]

local numofTracks = reaper.CountSelectedTracks(0)
local themeName

for i=0, numofTracks-1 do
  track=reaper.GetSelectedTrack(0,i)
  reaper.GetSetMediaTrackInfo_String(track, "P_MCP_LAYOUT", "- Separator - Narrow", true)
  reaper.GetSetMediaTrackInfo_String(track, "P_TCP_LAYOUT", "- Separator", true)
end

