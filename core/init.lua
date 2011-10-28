----------------------------------------------------------------
-- initiation of SumakPanels
----------------------------------------------------------------
-- including system
local addon, engine = ...
engine[1] = {} -- FCV, functions, constants, variables
engine[2] = {} -- CONF, config
engine[3] = {} -- LOC, localization

SumakPanels = engine -- Allow other addons to use Engine

---------------------------------------------------------------------------------
--	This should be at the top of every file inside of the SumakUI AddOn:	
--	local T, C, L = unpack(select(2, ...))

--	This is how another addon imports the Tukui engine:	
--	local T, C, L = unpack(SumakUI)
---------------------------------------------------------------------------------

local FCV, CONF, LOC = unpack(select(2, ...))
