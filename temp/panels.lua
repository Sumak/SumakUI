local function scale(x)
    return 1*math.floor(x/1+.5)
end

function CreateInnerBorder(f)
	if f.iborder then return end
	f.iborder = CreateFrame("Frame", nil, f)
	f.iborder:SetPoint("TOPLEFT", 1, -1)
	f.iborder:SetPoint("BOTTOMRIGHT", -1, 1)
	f.iborder:SetFrameLevel(f:GetFrameLevel())
	f.iborder:SetBackdrop({
	  edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1,
	  insets = { left = -1, right = -1, top = -1, bottom = -1}
	})
	f.iborder:SetBackdropBorderColor(0, 0, 0)
	return f.iborder
end

function CreateOuterBorder(f)
	if f.oborder then return end
	f.oborder = CreateFrame("Frame", nil, f)
	f.oborder:SetPoint("TOPLEFT", -1, 1)
	f.oborder:SetPoint("BOTTOMRIGHT", 1, -1)
	f.oborder:SetFrameLevel(f:GetFrameLevel())
	f.oborder:SetBackdrop({
	  edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1, 
	  insets = { left = -1, right = -1, top = -1, bottom = -1}
	})
	f.oborder:SetBackdropBorderColor(0, 0, 0)
	return f.oborder
end

function CreatePanel(f, w, h, a1, p, a2, x, y)
	local _, class = UnitClass("player")
	local r, g, b = RAID_CLASS_COLORS[class].r, RAID_CLASS_COLORS[class].g, RAID_CLASS_COLORS[class].b
	sh = scale(h)
	sw = scale(w)
	f:SetFrameLevel(1)
	f:SetHeight(sh)
	f:SetWidth(sw)
	f:SetFrameStrata("BACKGROUND")
	f:SetPoint(a1, p, a2, x, y)
	f:SetBackdrop({
	  bgFile =  [=[Interface\ChatFrame\ChatFrameBackground]=],
      edgeFile = "Interface\\Buttons\\WHITE8x8", 
	  tile = false, tileSize = 0, edgeSize = 1, 
	  insets = { left = -1, right = -1, top = -1, bottom = -1}
	})
	f:SetBackdropColor(.1,.1,.1,1 )
	f:SetBackdropBorderColor(.3,.3,.3,1)
	
	CreateOuterBorder(f)
	CreateInnerBorder(f)
end

local shadows = {
	edgeFile = "Interface\\Addons\\SumakPanels\\media\\img\\glowTex", 
	edgeSize = 4,
	insets = { left = 3, right = 3, top = 3, bottom = 3 }
}

function CreateShadow(f)
	if f.shadow then return end
	local shadow = CreateFrame("Frame", nil, f)
	shadow:SetFrameLevel(1)
	shadow:SetFrameStrata(f:GetFrameStrata())
	shadow:SetPoint("TOPLEFT", -4, 4)
	shadow:SetPoint("BOTTOMRIGHT", 4, -4)
	shadow:SetBackdrop(shadows)
	shadow:SetBackdropColor(0, 0, 0, 0)
	shadow:SetBackdropBorderColor(0, 0, 0, 1)
	f.shadow = shadow
	return shadow
end

local dataleftp = CreateFrame("Frame", "DataLeftPanel", UIParent)
CreatePanel(dataleftp, 380, 15, "BOTTOMLEFT", bottompanel, "BOTTOMLEFT", 10, 10)
CreateShadow(dataleftp)
dataleftp:SetFrameLevel(2)

local datarightp = CreateFrame("Frame", "DataRightPanel", UIParent)
CreatePanel(datarightp, 380, 15, "BOTTOMRIGHT", bottompanel, "BOTTOMRIGHT", -10, 10)
CreateShadow(datarightp)
datarightp:SetFrameLevel(2)

local chatlbgdummy = CreateFrame("Frame", "ChatLBackground", UIParent)
CreatePanel(chatlbgdummy, 380, 120, "BOTTOMLEFT", bottompanel, "BOTTOMLEFT", 10,  29)
CreateShadow(chatlbgdummy)

local minimaplol = CreateFrame("Frame", "minimaplol", UIParent)
CreatePanel(minimaplol, 120, 120, "BOTTOMRIGHT", bottompanel, "BOTTOMRIGHT", -10, 29)
CreateShadow(minimaplol)
minimaplol:SetFrameLevel(2)

local damagelol = CreateFrame("Frame", "damagelol", UIParent)
CreatePanel(damagelol, 256, 120, "BOTTOMRIGHT", bottompanel, "BOTTOMRIGHT", -134, 29)
CreateShadow(damagelol)
damagelol:SetFrameLevel(2)

local ActionBarBackground = CreateFrame("Frame", "ActionBarBackground", UIParent)
CreatePanel(ActionBarBackground, 362, 66, "BOTTOM", bottompanel, "BOTTOM", 0, 10)
CreateShadow(ActionBarBackground)
ActionBarBackground:SetFrameLevel(2)

local rightvertical = CreateFrame("Frame", "rightvertical", UIParent)
CreatePanel(rightvertical, 28, 139, "BOTTOMRIGHT", bottompanel, "BOTTOMRIGHT", -394, 10)
CreateShadow(rightvertical)
rightvertical:SetFrameLevel(2)

local leftvertical = CreateFrame("Frame", "leftvertical", UIParent)
CreatePanel(leftvertical, 28, 139, "BOTTOMLEFT", bottompanel, "BOTTOMLEFT", 394, 10)
CreateShadow(leftvertical)
leftvertical:SetFrameLevel(2)