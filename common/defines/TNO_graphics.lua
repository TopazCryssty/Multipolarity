-- NDefines.NGraphics.
--NDefines_Graphics.

NDefines.NMapMode.CONSTRUCTION_MAP_MODE_BUILDING_MAX_LEVEL_COLOR = { 0.05, 0.1, 0.7, 0.8 } 			-- Color of states/provinces where current building level is maxed out (max is current max level, not final max level) of a building type
NDefines.NMapMode.CONSTRUCTION_MAP_MODE_BUILDING_LEVEL_LOW_COLOR = { 0.2, 0.7, 0.0, 0.5 }
NDefines.NMapMode.CONSTRUCTION_MAP_MODE_BUILDING_LEVEL_HI_COLOR = { 0.45, 0.98, 0.0, 0.9 }
NDefines.NMapMode.SELECTED_COUNTRY_HIGHLIGHT_THICKNESS_MULT = 1.0								-- When a country is selected (blinking/highlighted) it's borders becomes a bit thicker, to make stand out even more. 1.0 is default thickness.
NDefines.NAirGfx.AIRPLANES_GROUND_COLLISION_OFFSET_Y = -5.0 		-- Lets the 3d airplanes disappear after going a bit under the ground.
NDefines.NAirGfx.BOMBERS_DIVISION_FACTOR = 60					-- Number of bombers in a strategic region will be divided by this factor.
NDefines.NAirGfx.FIGHTERS_DIVISION_FACTOR = 40					-- Number of missiles shown in a strategic region will be divided by this factor.
NDefines.NAirGfx.TRANSPORT_DIVISION_FACTOR = 60
NDefines.NGraphics.DRAW_MAP_OBJECTS_CUTOFF = 550.0				-- Remove map objects at this distance
NDefines.NGraphics.BORDER_WIDTH = 1.0
NDefines.NGraphics.DRAW_COUNTRY_NAMES_CUTOFF = 250                  -- Cutoff for drawing country names on the map
NDefines.NGraphics.BORDER_COLOR_SELECTION_STATE_R = 0.35
NDefines.NGraphics.BORDER_COLOR_SELECTION_STATE_G = 0.75
NDefines.NGraphics.BORDER_COLOR_SELECTION_STATE_B = 0.75
NDefines.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_R = 0.15
NDefines.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_G = 0.9
NDefines.NGraphics.BORDER_COLOR_SELECTION_PROVINCE_B = 0.9
NDefines.NGraphics.GRADIENT_BORDERS_FIELD_COUNTRY_LOW = 0.0 -- country area in sum of pixels ...
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_LOW = 0.0-- thickness in pixels
NDefines.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 0 -- The center gradient is linear 1/255 per pixel for this many pixels
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_HIGH = 35.0
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_STATE = 3.0
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_DIPLOMACY = 1
NDefines.NGraphics.GRADIENT_BORDERS_OPTIMIZATION_RANGE = 90.0 -- smaller value = faster gradient borders but may have artifacts on large provinces (value to balance)
NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048 -- Tweak dependly on amount of countries. Must be power of 2. No more then 2048.
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_AFTER = {0, 10, 20} -- After this amount of VP the map icon becomes bigger dot.
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_CAPITAL_CUTOFF_MAX = 1300.0	--Capitals are special snowflakes, they need their own number
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {500, 900, 1100}  -- At what camera distance the VP name text disappears, was 150, 250, 500
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF_MIN = 175.0 -- Min range for victory point text
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF_MAX = 800.0 -- Max range for victory point text, was 800
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_DOT_CUTOFF_MIN = 175.0 -- Min range for victory point dot
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_DOT_CUTOFF_MAX = 800.0 -- Max range for victory point text
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_MAX_VICTORY_POINTS_FOR_PERCENT = 50 -- Default max value for point on the above range. It doesn't matter much if the VP value exceeds this, it'll be treated as max.
NDefines.NGraphics.RESOURCE_MAP_ICON_TEXT_CUTOFF = 900  -- At what camera distance the resource name/amount text disappears.
NDefines.NGraphics.RESISTANCE_MAP_ICON_MODIFIERS_DISTANCE_CUTOFF = 100  -- At what camera distance the resistance/compliance map icon modifiers are hidden
NDefines.NGraphics.RESISTANCE_MAP_ICON_DISTANCE_CUTOFF = 1300  -- At what camera distance the resistance/compliance map icons are hidden
NDefines.NGraphics.PROVINCE_ANIM_TEXT_DISTANCE_CUTOFF = 200
NDefines.NGraphics.CAPITAL_ICON_CUTOFF = 900	-- At what camera distance capital icons disappears
NDefines.NGraphics.SUN_DIFFUSE_COLOR   = {0.14, 0.0, 1.0}
NDefines.NGraphics.SUN_INTENSITY 		= 1.0; -- 0.4
NDefines.NGraphics.MOON_DIFFUSE_COLOR  = {0.58, 0.5, 1.0}
NDefines.NGraphics.MOON_INTENSITY 		= 2.5;
NDefines.NGraphics.TRADE_ROUTE_RESOURCE_EXPORT_COLOR = { 0.5, 0.5, 1.0, 0.75 }
NDefines.NGraphics.TRADE_ROUTE_RESOURCE_IMPORT_COLOR = { 0.5, 0.5, 1.0, 0.75 }
NDefines.NGraphics.SUPPLY_UNIT_COUNTER_SHOW_THRESHOLD = 0.75  -- At what supply threshold will the normal crate be shown on unit counters
NDefines.NGraphics.SUPPLY_UNIT_COUNTER_LOW_THRESHOLD = 0.50  -- At what supply threshold will the orange crate be shown on unit counters
NDefines.NGraphics.SUPPLY_UNIT_COUNTER_VERY_LOW_THRESHOLD = 0.25  -- At what supply threshold will the red crate with ! will be shown on unit counters
NDefines.NGraphics.RAID_ARROW_BALLISTIC_MAX_HEIGHT = 50			-- Maximum altitude reached by ballistic trajectories
NDefines.NGraphics.RAID_ARROW_BALLISTIC_MAX_SEGMENT_LENGTH = 10	-- Maximum length of arrow segment (less = smoother curve)
NDefines.NGraphics.RAID_ARROW_AIR_MAX_SEGMENT_LENGTH = 5			-- Maximum length of arrow segment (less = smoother curve)
NDefines.NInterface.DRAG_AND_DROP_SCROLLING_SENSITIVITY = 30	-- Speed multiplier for components scrolling while drag'n dropping elements






