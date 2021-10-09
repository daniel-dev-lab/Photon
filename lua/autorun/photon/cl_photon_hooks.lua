AddCSLuaFile()

local should_render = false

hook.Add( "InitPostEntity", "Photon.InitStandShouldRender", function()
	should_render = GetConVar( "photon_stand_enabled" )
end )

PHOTON_REG_ENABLED = true

local PHOTON_REG_ENABLED = PHOTON_REG_ENABLED

function Photon:AdjustFrameTime()
	if FrameTime() >= EMV_FRAME_DUR or FrameTime() < EMV_FRAME_DUR and FrameTime() > EMV_FRAME_CONST then
		EMV_FRAME_DUR = FrameTime()
	elseif FrameTime() < EMV_FRAME_CONST then
		EMV_FRAME_DUR = EMV_FRAME_CONST
	end
end
hook.Add("PreRender", "Photon.AdjustFrameTime", function()
	Photon:AdjustFrameTime()
end)

local function TurnScan()
	if not should_render then return end
	if not should_render:GetBool() then return end
	local ply = LocalPlayer()
	if not ply or not ply:IsValid() or not ply:InVehicle() or not ply:GetVehicle() then return end
	local car = ply:GetVehicle()
	if not IsValid( car ) then return end
	if not car:Photon() then return end
	if not car.Photon_TurningRight or not car.Lighting then return end
	if ply:KeyDown( IN_MOVERIGHT ) and car:Photon_TurningRight() then
		car.Lighting.GoingForward = false
		return
	end
	if not ply:KeyDown( IN_FORWARD ) then
		if not car.Lighting then return end
		car.Lighting.GoingForward = false
		return
	end
	if car.Photon_TurningLeft and car:Photon_TurningLeft() and ply:KeyDown( IN_MOVELEFT ) then
		car.Lighting.GoingForward = false
		return
	end

	if car.Lighting.GoingForward and (car:Photon_AdjustedSpeed() > 25) then
		if CurTime() >= car.Lighting.ForwardDuration then
			Photon:CarSignal( "none" )
		end
	else
		car.Lighting.ForwardDuration = CurTime() + 1
		car.Lighting.GoingForward = true
	end

end
hook.Add("Tick", "Photon.TurnScan", function() TurnScan() end)

local function RemoveCarProps( ent )
	if IsValid( ent ) and ent:IsVehicle() and ent:HasPhotonELS() and ent.EMVProps then
		for _,prop in pairs( ent.EMVProps ) do
			prop:Remove()
		end
	end
	if IsValid( ent ) and ent:IsVehicle() and ent:Photon() and ent.PhotonWheelProps then
		for _,prop in pairs( ent.PhotonWheelProps ) do
			prop:Remove()
		end
	end
end
hook.Add("EntityRemoved", "Photon.RemoveCarProps", RemoveCarProps)

local function FixProps( ent, shouldTransmit )
	if not (IsValid( ent ) and ent:IsVehicle() and ent:HasPhotonELS() and ent.EMVProps) then return end
	ent:Photon_RemoveEMVProps( shouldTransmit )
end

hook.Add( "InitPostEntity", "Photon.ReadyHook", function()
	hook.Add("NotifyShouldTransmit", "Photon.FixProps", FixProps)
end)