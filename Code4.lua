-- AI
--

local world = World:new('Code4');
local Overlord = 'Horae'

function a_broadcast(msg)
	world:broadcast(msg);
end

function a_broadcast_npc(npc, msg)
	a_broadcast('&f[C4] &b' .. npc .. '&f: ' .. msg);
end


function a_whisper_npc(npc, msg, player)
	player:sendMessage('&f[C4] &b' .. npc .. ' &3-> &f' .. msg);
end


function EventOverlord_Standby(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Code 4 is getting ready, please stand by!", player);
end

function EventOverlord_Teams(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Players are now being split into 2 teams at random!", player);
end

function EventOverlord_Gear(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Both Teams have started gearing up!", player);
end


function EventOverlord_Start30(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Code 4 initializing in 30 Seconds!", player);
end

function EventOverlord_Start15(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Code 4 initializing in 15 Seconds!", player);
end

function EventOverlord_Start10(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Code 4 initializing in 10 Seconds!", player);
end

function EventOverlord_Start5(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Code 4 initializing in 5 Seconds!", player);
end

function EventOverlord_Gates(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "The gates have dropped, let the games begin!", player);
end

function EventOverlord_bscore(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&9Blue Team Has Scored a Point!", player);
end

function EventOverlord_gscore(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "&aGreen Team Has Scored a Point!", player);
end

function Symvan_aboutgame1(data)
        local player = Player:new(data.player);
        a_broadcast_npc(Overlord, "Welcome to &6Code4&f. This is a 'Capture-The-Flag' game that will take place in 3 vs 3 rounds.", player);
end

function Symvan_aboutgame2(data)
	local player = player:new(data.player);
	a_broadcast_npc(Overlord, "Players must go from their base, to the enemy base, collecting the flag and bringing it back home.", player);
	
end

function Symvan_aboutgame3(data)
	local player = player:new(data.player);
	a_broadcast_npc(Overlord, "In order to score a point, your flag must currently be at your base.", player);
end

function Symvan_aboutgame4(data)
	local player = player:new(data.player);
	a_broadcast_npc(Overlord, "You will know if you can score a point by looking at the flag on the top of your base.", player);
end

function Symvan_aboutgame5(data)
	local player = player:new(data.player);
	a_broadcast_npc(Overlord, "If the flag is fully raised, your flag is at home.", player);
end

function Symvan_aboutgame6(data)
	local player = player:new(data.player);
	a_broadcast_npc(Overlord, "If the flag is down, you must first find and kill the enemy with your flag before you can score.", player);
end

registerHook("INTERACT", "EventOverlord_Teams", 77, "Code4", -3, 86, -35);
registerHook("INTERACT", "EventOverlord_Start30", 77, "Code4", -1, 86, -35);
registerHook("INTERACT", "EventOverlord_Start15", 77, "Code4", 0, 86, -35);
registerHook("INTERACT", "EventOverlord_Start10", 77, "Code4", 1, 86, -35);
registerHook("INTERACT", "EventOverlord_Start5", 77, "Code4", 2, 86, -35);
registerHook("INTERACT", "EventOverlord_Gates", 77, "Code4", 3, 86, -35);
registerHook("INTERACT", "EventOverlord_bscore", 77, "Code4", 3, 86, -34);
registerHook("INTERACT", "EventOverlord_gscore", 77, "Code4", -3, 86, -34);
registerHook("INTERACT", "EventOverlord_Standby", 77, "Code4", -4, 86, -35);
registerHook("INTERACT", "EventOverlord_Gear", 77, "Code4", -2, 86, -35);
registerHook("INTERACT", "Symvan_aboutgame1", 77, "Code4", 3, 86, -36);


-- Teleport
--

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 50, 65, 0);

function blue_lobby_teleport(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "blue_lobby_teleport", "Code4-blta");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, -50, 65, 0);

function green_lobby_teleport(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "green_lobby_teleport", "Code4-glta");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 0, 90, -51);

function lobby_catch(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "lobby_catch", "Code4-lobby_catch");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 0, 90, -51);

function ctf_catch(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "ctf_catch", "Code4-ctf_catch");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, -44, 64, 0);

function gsafe_arena1(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "gsafe_arena1", "Code4-gsta1");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, -44, 64, 0);

function gsafe_arena2(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "gsafe_arena2", "Code4-gsta2");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 44, 64, 0);

function bsafe_arena1(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "bsafe_arena1", "Code4-bsta1");

local myWorld = World:new('Code4');
local location = Location:new(myWorld, 44, 64, 0);

function bsafe_arena2(data)
       local targetPlayer = Player:new(data.player);
       targetPlayer:teleport(location);
end

registerHook("REGION_ENTER", "bsafe_arena2", "Code4-bsta2");

-- Chest Cloning
--

local world = World:new('Code4');
local BlueGearChest = Location:new(world, 54, 65, 0);
local BluePlayers = {};

function Blue_Team_Gear(data)
	local player = Player:new(data.player);
	if BluePlayers[player.name] == nil then
		BluePlayers[player.name] = true;
		BlueGearChest:cloneChestToPlayer(player.name);
		player:sendMessage("&dAs fast as you can get your gear on and into place then jump into the water!");
	end
end

registerHook("INTERACT", "Blue_Team_Gear", 54, "Code4", 54, 65, 0);

local world = World:new('Code4');
local GreenGearChest = Location:new(world, -54, 65, 0);
local GreenPlayers = {};

function Green_Team_Gear(data)
	local player = Player:new(data.player);
	if GreenPlayers[player.name] == nil then
		GreenPlayers[player.name] = true;
		GreenGearChest:cloneChestToPlayer(player.name);
		player:sendMessage("&dAs fast as you can get your gear on and into place then jump into the water!");
	end
end

registerHook("INTERACT", "Green_Team_Gear", 54, "Code4", -54, 65, 0);

