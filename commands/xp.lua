local target = arguments[1] or message.user.id
local save = discord.get_member_save(message.guild_id, target)
local xp = save and (save.xp or 0) or 0

response.text = "<@"..target.."> possede "..xp.." xp !"