local FCV, CONF, LOC = unpack(select(2, ...)) -- Import: FCV - functions, constants, variables; CONF- config; LOC - locales
-- SumakUI API, see DOCS/API.txt for more informations
--[[
--SumakPanels = { }
CONF["media"] = {
	["font"] = [=[Interface\Addons\SumakPanels\fonts\uf_font.ttf]=], 			        				-- �����
	["pxfont"] = [[Interface\\Addons\\SumakPanels\\fonts\\normal_font.ttf]], 			-- �����
	["fontsize"] = 10, 														    														-- �������� ������ 
	--["bordercolor"] = { .15,.15,.15,1 }, 																					-- ���� ������� �������
	--["backdropcolor"] = { .06,.06,.06,1 }, 																			-- ���� ��������
	["texture"] = "Interface\\Addons\\SumakPanels\\media\\statusbar.tga",    -- ��������
	["blank"] = "Interface\\Buttons\\WHITE8x8",
}

]]
CONF["media"] = {	
	["font"] = "Interface\\AddOns\\SumakPanels\\fonts\\normal_font.ttf" , 			-- main font in Qulight UI
	["fontsize"] = 12, 														-- Size of font 
	["bordercolor"] = { .1,.1,.1,1 }, 							-- border color of Qulight UI panels
	["backdropcolor"] = { .09,.09,.09,1 }, 				-- background color of Qulight UI panels
	["texture"] = [=[Interface\Addons\QulightUI\media\Other\normTex.tga]=],
	["blank"] = "Interface\\Buttons\\WHITE8x8",
}