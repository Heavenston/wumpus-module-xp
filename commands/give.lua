
local target = arguments[2] and arguments[1] or message.user.id
local s = discord.get_member_save(message.guild_id, target)

local xp = arguments[2] or arguments[1]

if (not s) or (not s.xp) then
  s = {
    xp = 0
  }
end

s.xp = s.xp + xp
response.text = xp.." ajoutée"..(xp > 1 and "s" or "").."\n<@!"..target.."> a maintenant`"..s.xp.."` xp !"

discord.set_member_save(message.guild_id, target, s)