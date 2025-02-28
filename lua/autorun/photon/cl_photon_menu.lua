AddCSLuaFile()

list.Set("DesktopWindows", "PhotonMenu", {
	title = "Photon",
	icon = "photon/ui/photon_menu.png",
	init = function(icon, window)
		OpenPhotonMenu()
	end
})

function OpenPhotonMenu()
	if PhotonWebPage then
		PhotonWebPage:Refresh()
	end

	if not PhotonWebPage then
		PhotonWebPage = vgui.Create("DHTML")
		PhotonWebPage:SetVisible(false)
		PhotonWebPage:SetSize(ScrW() * .66, ScrH() * .66)
		PhotonWebPage:Center()
		PhotonWebPage:OpenURL("https://menu.photon.lighting/photon.html")
		PhotonWebPage:SetAllowLua(true)
	end

	PhotonWebPage:SetVisible(true)
	PhotonWebPage:MakePopup()
end

concommand.Add("photon_menu", OpenPhotonMenu)

function ClosePhotonMenu()
	if PhotonWebPage then
		PhotonWebPage:SetVisible(false)
	end
end

net.Receive("photon_menu", function()
	OpenPhotonMenu()
end)
