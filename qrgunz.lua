-- weapon index
Idx_hunter   	= 1
Idx_crossbow 	= 2
Idx_blaster  	= 3
Idx_zapper   	= 4
Idx_cannon   	= 5
Idx_rocket   	= 6
Idx_stallion 	= 7
Idx_revolver 	= 8

ItemToWeaponInfo = {
	["Item_WeaponHunter"] = 		{ "Hunter", 		 Idx_hunter,   "Weapon_Hunter"		 },
	["Item_WeaponCrossbow"] = 		{ "Crossbow", 		 Idx_crossbow, "Weapon_Crossbow"	 },
	["Item_WeaponBlaster"] = 		{ "Blaster", 		 Idx_blaster,  "Weapon_Blaster"	 	 },
	["Item_WeaponElectrifier"] =	{ "Electrifier",	 Idx_zapper,   "Weapon_Electrifier"  },
	["Item_WeaponHandcannon"] = 	{ "Handcannon", 	 Idx_cannon,   "Weapon_Handcannon"	 },
	["Item_WeaponRocket"] = 		{ "Rocket Launcher", Idx_rocket,   "Weapon_Rocket"  	 },
	["Item_WeaponStallion"] = 		{ "Stallion",		 Idx_stallion, "Weapon_Stallion" 	 },
	["Item_WeaponRevolver"] = 		{ "Revolver",		 Idx_revolver, "Weapon_Revolver"	 }
}

WeaponClassToIndex = {
	["Weapon_Hunter"] =			Idx_hunter,
	["Weapon_Crossbow"] =		Idx_crossbow,
	["Weapon_Blaster"] =		Idx_blaster,
	["Weapon_Electrifier"] =	Idx_zapper,
	["Weapon_Handcannon"] =		Idx_cannon,
	["Weapon_Rocket"] =			Idx_rocket,
	["Weapon_Stallion"] =		Idx_stallion,
	["Weapon_Revolver"] =		Idx_revolver
}

RollTable = {
	{ 3, "a ~!LEGENDARY!~", "!!!", 92 },
	{ 2, "an EPIC", "!", 80 },
	{ 1, "a Rare", ".", 60 },
}

-- hunter
function Rare_Hunter(guy, wep)
	wep.SetFireCooldown(0.80)
	wep.SetDamageValue(12)
end

function Epic_Hunter(guy, wep)
	wep.SetFireCooldown(0.60)
	wep.SetUseSphereTrace(true)
	wep.SetUseSphereTrace(3)
	wep.SetDamageValue(16)
end

function Legendary_Hunter(guy, wep)
	wep.SetFireCooldown(0.15)
	wep.SetUseSphereTrace(true)
	wep.SetSphereRadius(6)
	wep.SetConsumeAmmo(false)
	wep.SetDamageValue(24)
end

-- crossbow
function Rare_Crossbow(guy, wep)
	wep.SetMaxAmmoMultiplayer(25)
	wep.SetConsumeAmmo(true)
	wep.SetFireCooldown(1.4)
end

function Epic_Crossbow(guy, wep)
	wep.SetFireCooldown(0.7)
	wep.SetConsumeAmmo(true)
	wep.SetMaxAmmoMultiplayer(35)
end

function Legendary_Crossbow(guy, wep)
	wep.SetFireCooldown(.2)
	wep.SetConsumeAmmo(false)
end

-- blaster
function Rare_Blaster(guy, wep)
	wep.SetFireCooldown(0.09)
end

function Epic_Blaster(guy, wep)
	wep.SetFireCooldown(0.08)
	wep.SetMaxAmmoMultiplayer(175)
end

function Legendary_Blaster(guy, wep)
	wep.SetFireCooldown(0.1)
	wep.SetMaxAmmoMultiplayer(250)
end

-- zapper
function Rare_Zapper(guy, wep)
	wep.SetDamageValue(10)
	wep.SetMaxRange(3500)
end

function Epic_Zapper(guy, wep)
	wep.SetDamageValue(14)
	wep.SetFireCooldown(0.04)
	wep.SetMaxRange(5000)
end

function Legendary_Zapper(guy, wep)
	wep.SetDamageValue(24)
	wep.SetFireCooldown(0.065)
	wep.SetMaxAmmoMultiplayer(250)
	wep.SetMaxRange(20000)
end

-- cannon
function Rare_Cannon(guy, wep)
	--
end

function Epic_Cannon(guy, wep)
	--
end

function Legendary_Cannon(guy, wep)
	wep.SetMaxAmmoMultiplayer(40)
end

-- rocket
function Rare_Rocket(guy, wep)
	wep.SetFireCooldown(0.7)
end

function Epic_Rocket(guy, wep)
	wep.SetFireCooldown(0.6)
	wep.SetMaxAmmoMultiplayer(30)
end

function Legendary_Rocket(guy, wep)
	wep.SetMaxAmmoMultiplayer(40)
	wep.SetFireCooldown(0.5)
end

-- stallion
function Rare_Stallion(guy, wep)
	wep.SetFireCooldown(.8)
	wep.SetDamageValue(90)
end

function Epic_Stallion(guy, wep)
	wep.SetDamageValue(90)
	wep.SetFireCooldown(.3)
end

function Legendary_Stallion(guy, wep)
	wep.SetFireCooldown(0.125)
	wep.SetDamageValue(100)
	wep.SetConsumeAmmo(false)
end

-- revolver
function Rare_Revolver(guy, wep)
	wep.SetDamageValue(300)
	wep.AddAmmo(1)
end

function Epic_Revolver(guy, wep)
	wep.SetDamageValue(400)
	wep.AddAmmo(2)
end

function Legendary_Revolver(guy, wep)
	wep.SetDamageValue(1000)
	wep.AddAmmo(4)
end

FunctionTable = {
	[Idx_hunter]   = { Rare_Hunter, Epic_Hunter, Legendary_Hunter 		},
	[Idx_crossbow] = { Rare_Crossbow, Epic_Crossbow, Legendary_Crossbow },
	[Idx_blaster]  = { Rare_Blaster, Epic_Blaster, Legendary_Blaster	},
	[Idx_zapper]   = { Rare_Zapper, Epic_Zapper, Legendary_Zapper 		},
	[Idx_cannon]   = { Rare_Cannon, Epic_Cannon, Legendary_Cannon 		},
	[Idx_rocket]   = { Rare_Rocket, Epic_Rocket, Legendary_Rocket		},
	[Idx_stallion] = { Rare_Stallion, Epic_Stallion, Legendary_Stallion },
	[Idx_revolver] = { Rare_Revolver, Epic_Revolver, Legendary_Revolver },
}

function NotifyClientWeapon(rollindex, guy, rarity, wep, punctuation, wep_class, rareindex)
	local r = 1
	local g = 1
	local b = 1
	if rollindex == 3 then
		r = 1
		g = .5
		b = 0
	elseif rollindex == 2 then
		r = .5
		g = 0
		b = .8
	else
		r = 0
		g = .1
		b = 1
	end
	OnScreenMessage("Picked up " .. rarity .. " " .. wep .. punctuation, r, g, b, 5)
	PlaySound("Servo_Small_3_1", 1)

	if guy.GetEquippedWeapon() ~= nil and guy.GetEquippedWeapon().GetClass() == wep_class then
		local gun = guy.GetWeaponByClass(wep_class)
		FunctionTable[WeaponClassToIndex[wep_class]][rareindex](guy, gun)
	end
end

function NotifyWeapon(guy, data, wep, wep_class, rareindex)
	if guy.IsControlledCharacter() then
		NotifyClientWeapon(data[1], guy, data[2], wep, data[3], wep_class, rareindex)
	else
		guy.NetCallClient(true, "NotifyClientWeapon", { data[1], guy, data[2], wep, data[3], wep_class, rareindex })
	end	
end

function UpdateGotGun(guy, index, val)
	if IsServer() then
		local gunGot = guy.GetReppedVar("gotGun")
		gunGot[index] = val
		guy.SetReppedVar("gotGun", gunGot)
	end
end

function EVENT_Character_Killed(char, killingPlayer, health, damage, hitDirection, hitPointOnCollision)
	if (char.VarExists("zaptimer")) then
		ClearTimer(char.GetVar("zaptimer"))
	end
end

function EVENT_PlayerCharacter_Spawned(char)
	if IsServer() then
		local gunn = { 0, 0, 0, 0, 0, 0, 0, 0 }
		char.SetReppedVar("gotGun", gunn)
	end
end

function EVENT_Item_Taken(wep, char, spawnType)

	if not IsServer() then
		return
	end

	local wepclass = wep.GetClass()
	if ItemToWeaponInfo[wepclass] == nil then
		return
	end

	local r = Truncate(Rand(0, 100))
	local screen_name = ItemToWeaponInfo[wepclass][1]
	local gun_index = ItemToWeaponInfo[wepclass][2]
	local class_name = ItemToWeaponInfo[wepclass][3]

	local i = 1
	while i <= 3 do
		local data = RollTable[i]
		if r > data[4] and char.GetReppedVar("gotGun")[gun_index] < data[1] then
			UpdateGotGun(char, gun_index, data[1])
			NotifyWeapon(char, data, screen_name, class_name, data[4])
			break
		end
		i = i + 1
	end

	-- if this is a legendary zapper, start the regen timer now instead of on equip
	if (IsServer() and class_name == "Weapon_Electrifier" and r > 92) then
		local handle = SetTimer("ZapperRegen", 0.2, true, {char.GetWeaponByClass(class_name), char})
		char.SetVar("zaptimer", handle)
	end
end

function EVENT_Character_WeaponEquipped(char, wep)
	-- apply weapon changes on equip so its guaranteed the client knows what it has
	if wep.GetClass() == "Weapon_Pounder" or 
	   wep.GetClass() == "Weapon_Shotgun" or 
	   not char.ReppedVarExists("gotGun") then
		return
	end

	local index = WeaponClassToIndex[wep.GetClass()]
	local pwr = char.GetReppedVar("gotGun")[index]
	if pwr > 0 then
		FunctionTable[index][pwr](char, wep)
	end
end
		
function EVENT_Projectile_Spawned(proj)
	if proj.GetClass() == "Projectile_CrossbowBolt" then
		if proj.GetCharacter().GetReppedVar("gotGun")[Idx_crossbow] == 3 then
			proj.SetLifeSpan(3)
			proj.SetShouldBounceFromSurfaces(true)
			proj.SetModelScale(2)
			proj.SetCollisionRadius(1.5)
			proj.SetMaxDamage(200)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_crossbow] == 2 then
			proj.SetModelScale(1.3)
			proj.SetCollisionRadius(1.3)
			proj.SetMaxDamage(170)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_crossbow] == 1 then
			proj.SetMaxDamage(140)
			proj.SetModelScale(1.15)
			proj.SetCollisionRadius(1.15)
		end
	end

	if proj.GetClass() == "Projectile_Rocket" then
		if proj.GetCharacter().GetReppedVar("gotGun")[Idx_rocket] == 3 then
			proj.SetModelScale(2.5)
			proj.SetCollisionRadius(2.5)
			proj.SetMaxDamage(220)
			proj.SetExplodeEffectScale(2)
			proj.SetSplashRadius(850)
			proj.SetBlockedSplashMultiplier(0.2)
			proj.SetProjectileSpeed(99999)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_rocket] == 2 then
			proj.SetModelScale(2)
			proj.SetCollisionRadius(2)
			proj.SetExplodeEffectScale(1.2)
			proj.SetSplashRadius(600)
			proj.SetMaxDamage(150)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_rocket] == 1 then
			proj.SetModelScale(1.5)
			proj.SetCollisionRadius(1.5)
			proj.SetSplashRadius(350)
			proj.SetMaxDamage(120)
			proj.SetBlockedSplashMultiplier(0.08)
		end
	end

	if proj.GetClass() == "Projectile_BlasterBulb" then
		if proj.GetCharacter().GetReppedVar("gotGun")[Idx_blaster] == 3 then
			proj.SetMaxDamage(20)
			proj.SetCollisionRadius(10)
			proj.SetModelScale(1.8)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_blaster] == 2 then
			proj.SetMaxDamage(45)
			proj.SetCollisionRadius(8)
			proj.SetModelScale(1.33)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_blaster] == 1 then
			proj.SetMaxDamage(30)
		end
	end

	if proj.GetClass() == "Projectile_Cannonball" then
		if proj.GetCharacter().GetReppedVar("gotGun")[Idx_cannon] == 3 then
			proj.SetCanBePushed(true)
			proj.SetCanHitCharacterOnGround(true)
			proj.SetMaxDamage(400)
			proj.SetModelScale(4)
			proj.SetCollisionRadius(18 * 4)
			proj.SetExplodeEffectScale(3.5)
			proj.SetSplashRadius(2000)
			proj.SetBlockedSplashMultiplier(0.4)
			proj.SetFuseTimer(6)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_cannon] == 2 then
			proj.SetCanBePushed(true)
			proj.SetMaxDamage(250)
			proj.SetModelScale(2)
			proj.SetCollisionRadius(18 * 2)
			proj.SetExplodeEffectScale(2)
			proj.SetSplashRadius(1500)
			proj.SetBlockedSplashMultiplier(0.15)
			proj.SetFuseTimer(4)
		elseif proj.GetCharacter().GetReppedVar("gotGun")[Idx_cannon] == 1 then
			proj.SetMaxDamage(175)
			proj.SetModelScale(1.5)
			proj.SetCollisionRadius(18 * 1.5)
			proj.SetBlockedSplashMultiplier(0.08)
			proj.SetSplashRadius(900)
		end
	end
end

function ZapperRegen(zappa, guy)
	zappa.AddAmmo(1)
end

function EVENT_Weapon_Fired(wep)

	if (wep.GetClass() == "Weapon_Blaster" and wep.GetCharacter().GetReppedVar("gotGun")[Idx_blaster] == 3) and 
	(wep.GetCharacter().IsControlledCharacter() or IsServer()) then

		local dir = RotToVec(wep.GetCharacter().GetRotation())
		local angle = 0
		
		while (angle < 360) do
			
			local i = 1
			while (i <= 2) do
				
				local proj = wep.FireProjectile()
				if proj ~= nil then			
					local rot = VecToRot(dir)
					rot.pitch = rot.pitch + (i * 5)
					rot = RotToVec(rot)
					rot = RotateVector(rot, angle, dir)
					
					proj.SetRotation(VecToRot(rot))
					proj.SetHumVolume(.1)
					proj.SetIgnoreMovementUpdates(true)
					
				end
				i = i + 1
			end
			angle = angle + 36
		end
	end

	if (wep.GetClass() == "Weapon_Crossbow" and wep.GetCharacter().GetReppedVar("gotGun")[Idx_crossbow] == 3) and 
	(wep.GetCharacter().IsControlledCharacter() or IsServer()) then

		local dir = RotToVec(wep.GetCharacter().GetRotation())
		local angle = 90
		
		while (angle < 450) do
			
			local i = 1
			while (i <= 1) do
				
				local proj = wep.FireProjectile()
				if proj ~= nil then
					local rot = VecToRot(dir)
					rot.pitch = rot.pitch + (i * 6)
					rot = RotToVec(rot)
					rot = RotateVector(rot, angle, dir)
					
					proj.SetRotation(VecToRot(rot))
					
					proj.SetIgnoreMovementUpdates(true)

				end
				i = i + 1
			end
			angle = angle + 180
		end
	end
end
