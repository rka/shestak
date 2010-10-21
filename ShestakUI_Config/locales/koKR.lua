﻿----------------------------------------------------------------------------------------
--	Localization for koKR client(Need full translation)
----------------------------------------------------------------------------------------
if GetLocale() == "koKR" then
	L_GUI_BUTTON_RESET = "Total Reset UI"
	-- General options
	L_GUI_GENERAL_UIICON = "UI icon near minimap"
	L_GUI_GENERAL_AUTOSCALE = "Auto UI Scale"
	L_GUI_GENERAL_MULTISAMPLE = "Multisample protection (clean 1px border)"
	L_GUI_GENERAL_UISCALE = "UI Scale (if auto-scale is disabled)"
	L_GUI_GENERAL_WELCOME_MESSAGE = "Welcome message in chat"

	-- Miscellaneous options
	L_GUI_MISC_AUTOQUEST = "Auto accept quest"
	L_GUI_MISC_AUTODUEL = "Auto decline duel"
	L_GUI_MISC_AUTOACCEPT = "Auto accept invite"
	L_GUI_MISC_AUTORESSURECT = "Auto resurrection in Battle Ground"
	L_GUI_MISC_MARKING = "Marks target when you push *shift*"
	L_GUI_MISC_INVKEYWORD = "Short keyword for invite (/ainv)"
	L_GUI_MISC_RAID_PLANNER = "Enable Raid planner (/com)"
	L_GUI_MISC_SPIN_CAMERA = "Spin camera while afk"
	L_GUI_MISC_MOVE_WATCH_FRAME = "Quest Watch frame movable"
	L_GUI_MISC_VEHICLE_MOUSEOVER = "Vehicle frame on mouseover"
	
	-- Skins options
	L_GUI_SKINS = "Stylization"
	L_GUI_SKINS_DBM = "Enable styling DBM"
	L_GUI_SKINS_PP = "Enable styling PallyPower"
	
	-- Combat text options
	L_GUI_COMBATTEXT = "Combat Text" -- Needs review
	L_GUI_COMBATTEXT_FONT_SIZE = "Font size" -- Needs review
	L_GUI_COMBATTEXT_BLIZZ_HEAD_NUMBERS = "Use blizzard damage/healing output(above mob/player head)" -- Needs review
	L_GUI_COMBATTEXT_DAMAGE = "Show outgoing damage in it's own frame" -- Needs review
	L_GUI_COMBATTEXT_HEALING = "Show outgoing healing in it's own frame" -- Needs review
	L_GUI_COMBATTEXT_DAMAGE_COLOR = "Display damage numbers depending on school of magic" -- Needs review
	L_GUI_COMBATTEXT_CRIT_PREFIX = "Symbol that will be added before crit" -- Needs review
	L_GUI_COMBATTEXT_CRIT_POSTFIX = "Symbol that will be added after crit" -- Needs review
	L_GUI_COMBATTEXT_ICONS = "Show outgoing damage icons" -- Needs review
	L_GUI_COMBATTEXT_ICON_SIZE = "Icon size of spells in outgoing damage frame, also has effect on dmg font size" -- Needs review
	L_GUI_COMBATTEXT_DAMAGE_STYLE = "Change default damage/healing font above mobs/player heads(you need to restart WoW to see changes)" -- Needs review
	L_GUI_COMBATTEXT_TRESHOLD = "Minimum damage to show in damage frame" -- Needs review
	L_GUI_COMBATTEXT_HEAL_TRESHOLD = "Minimum healing to show in incoming/outgoing healing messages" -- Needs review
	L_GUI_COMBATTEXT_SCROLLABLE = "Allows you to scroll frame lines with mousewheel" -- Needs review
	L_GUI_COMBATTEXT_MAX_LINES = "Max lines to keep in scrollable mode(more lines = more memory)" -- Needs review
	L_GUI_COMBATTEXT_TIME_VISIBLE = "Time(seconds) a single message will be visible" -- Needs review
	L_GUI_COMBATTEXT_STOP_VE_SPAM = "Automaticly turns off healing spam for priests in shadowform" -- Needs review
	L_GUI_COMBATTEXT_DK_RUNES = "Show deatchknight rune recharge" -- Needs review
	
	-- Buffs reminder options
	L_GUI_REMINDER = "Buffs reminder"
	L_GUI_REMINDER_SOLO_ENABLE = "Show missing self buffs"
	L_GUI_REMINDER_SOLO_SOUND = "Warning sound notification for self buffs reminder"
	L_GUI_REMINDER_SOLO_SIZE = "Self buffs icon size"
	L_GUI_REMINDER_RAID_ENABLE = "Show missing raid buffs"
	L_GUI_REMINDER_RAID_ALWAYS = "Show buffs reminder always"
	L_GUI_REMINDER_RAID_SIZE = "Raid buffs icon size"
	L_GUI_REMINDER_RAID_ALPHA = "Transparent icons when the buffs is present"
	
	-- Raid/Enemy cooldown options
	L_GUI_COOLDOWN = "Raid/Enemy cooldowns"
	L_GUI_COOLDOWN_RAID_ENABLE = "Enable raid cooldowns"
	L_GUI_COOLDOWN_RAID_FONT = "Raid cooldowns font size"
	L_GUI_COOLDOWN_RAID_HEIGHT = "Raid cooldowns bars height"
	L_GUI_COOLDOWN_RAID_WIDTH = "Raid cooldowns bars width(If the icon is enabled, width+28)"
	L_GUI_COOLDOWN_RAID_SORT = "Raid cooldowns sort upwards bars"
	L_GUI_COOLDOWN_RAID_ICONS = "Raid cooldowns icons"
	L_GUI_COOLDOWN_RAID_IN_RAID = "Show raid cooldowns in raid zone"
	L_GUI_COOLDOWN_RAID_IN_PARTY = "Show raid cooldowns in party zone"
	L_GUI_COOLDOWN_RAID_IN_ARENA = "Show raid cooldowns in arena zone"
	L_GUI_COOLDOWN_ENEMY = "Enable enemy cooldowns"
	L_GUI_COOLDOWN_ENEMY_SIZE = "Enemy cooldowns icon size"
	L_GUI_COOLDOWN_ENEMY_EVERYWHERE = "Show everywhere enemy cooldowns"
	L_GUI_COOLDOWN_ENEMY_IN_BG = "Show enemy cooldowns in bg zone"
	L_GUI_COOLDOWN_ENEMY_IN_ARENA = "Show enemy cooldowns in arena zone"
	
	-- Threat options
	L_GUI_THREAT = "Threat bars"
	L_GUI_THREAT_ENABLE = "Enable threat bars"
	L_GUI_THREAT_FONT_SIZE = "Threat bars font size"
	L_GUI_THREAT_HEIGHT = "Threat bars height"
	L_GUI_THREAT_WIDTH = "Threat bars width"
	L_GUI_THREAT_ROWS = "Number of threat bars"
	L_GUI_THREAT_TEST_MODE = "Enable test mode for threat bars"
	
	-- Tooltip options
	L_GUI_TOOLTIP = "Tooltip"
	L_GUI_TOOLTIP_ENABLE = "Enable tooltip"
	L_GUI_TOOLTIP_SHIFT = "Show tooltip when *shift* is pushed"
	L_GUI_TOOLTIP_CURSOR = "Tooltip under cursor"
	L_GUI_TOOLTIP_ICON = "Item icon in tooltip"
	L_GUI_TOOLTIP_HEALTH = "Numeral health value"
	L_GUI_TOOLTIP_HIDE = "Hide tooltips for actions bars"
	L_GUI_TOOLTIP_TALENTS = "Show tooltip talents"
	L_GUI_TOOLTIP_ACHIEVEMENTS = "Comparing achievements in tooltip"
	L_GUI_TOOLTIP_TARGET = "Target player in tooltip"
	L_GUI_TOOLTIP_TITLE = "Player title in tooltip"
	L_GUI_TOOLTIP_RANK = "Player guild-rank in tooltip"
	L_GUI_TOOLTIP_ARENA_EXPERIENCE = "Player PVP experience in arena"
	
	-- Chat options
	L_GUI_CHAT_ENABLE = "Enable chat"
	L_GUI_CHAT_BACKGROUND = "Enable chat background"
	L_GUI_CHAT_BACKGROUND_ALPHA = "Alpha of chat background"
	L_GUI_CHAT_FONT_SIZE = "Chat font size"
	L_GUI_CHAT_FONT_STYLE = "Font style"
	L_GUI_CHAT_TAB_FONT_SIZE = "Chat tab font size"
	L_GUI_CHAT_TAB_FONT_STYLE = "Tab font style"
	L_GUI_CHAT_SPAM = "Removing some chat spam(*Player1* won duel *Player2*)"
	L_GUI_CHAT_WIDTH = "Chat width"
	L_GUI_CHAT_HEIGHT = "Chat height"
	L_GUI_CHAT_BAR = "Lite Button Bar for switch chat channel"
	L_GUI_CHAT_TIMESTAMP = "Timestamp coloring"
	L_GUI_CHAT_WHISP = "Sound when whisper"
	
	-- Bag options
	L_GUI_BAGS = "Bags"
	L_GUI_BAGS_BUTTON_SIZE = "Buttons size"
	L_GUI_BAGS_BUTTON_SPACE = "Buttons space"
	L_GUI_BAGS_BANK = "Number of columns in bank"
	L_GUI_BAGS_BAG = "Number of columns in main bag"
	
	-- Minimap options
	L_GUI_MINIMAP_ENABLE = "Enable minimap"
	L_GUI_MINIMAP_ICON = "Tracking icon"
	L_GUI_MINIMAP_SIZE = "Map size"
	L_GUI_MINIMAP_HIDE_COMBAT = "Hide minimap in combat"
	
	-- Map options
	L_GUI_MAP_ENABLE = "Enable world map"
	L_GUI_MAP_SCALE = "World map scale"
	L_GUI_MAP_BG_STYLIZATION = "BG map stylization"
	
	-- Loot options
	L_GUI_LOOT_ENABLE = "Enable loot frame"
	L_GUI_LOOT_ROLL_ENABLE = "Enable group loot frame"
	L_GUI_LOOT_FONT_SIZE = "Loot frame font size"
	L_GUI_LOOT_ICON_SIZE = "Icon size"
	L_GUI_LOOT_WIDTH = "Loot frame width"
	L_GUI_LOOT_AUTOGREED = "Enable auto-greed for green item at max level"
	L_GUI_LOOT_AUTODE = "Auto confirm disenchant"
	
	-- Nameplate options
	L_GUI_NAMEPLATE_ENABLE = "Enable nameplates"
	L_GUI_NAMEPLATE_COMBAT = "Automatically show nameplate in combat"
	L_GUI_NAMEPLATE_HEALTH = "Numeral health value"
	L_GUI_NAMEPLATE_CASTBAR = "Show nameplate castbar"
	L_GUI_NAMEPLATE_FONT_SIZE = "Nameplate font size"
	L_GUI_NAMEPLATE_HEIGHT = "Nameplate height"
	L_GUI_NAMEPLATE_WIDTH = "Nameplate width"
	L_GUI_NAMEPLATE_CASTBAR_NAME = "Show castbar name"
	L_GUI_NAMEPLATE_THREAT = "If tank good aggro = green, bad = red"
	L_GUI_NAMEPLATE_CLASS_ICON = "Icons by class in pvp"
	L_GUI_NAMEPLATE_NAME_ABBREV = "Display the abbreviated names"
	
	-- ActionBar options
	L_GUI_ACTIONBAR_ENABLE = "Enable action bars"
	L_GUI_ACTIONBAR_HOTKEY = "Show text on you hotkey"
	L_GUI_ACTIONBAR_GRID = "Show empty action bar buttons"
	L_GUI_ACTIONBAR_BUTTON_SIZE = "Buttons size"
	L_GUI_ACTIONBAR_BUTTON_SPACE = "Buttons space"
	L_GUI_ACTIONBAR_BOTTOMBARS = "Number of action bars on the bottom (1, 2 or 3)"
	L_GUI_ACTIONBAR_RIGHTBARS = "Number of action bars on right (0, 1, 2 or 3)"
	L_GUI_ACTIONBAR_RIGHTBARS_MOUSEOVER = "Right bars on mouseover"
	L_GUI_ACTIONBAR_PETBAR_MOUSEOVER = "Petbar on mouseover(only for horizontal petbar)"
	L_GUI_ACTIONBAR_PETBAR_HIDE = "Hide pet bar"
	L_GUI_ACTIONBAR_PETBAR_HORIZONTAL = "Enable horizontal pet bar"
	L_GUI_ACTIONBAR_SHAPESHIFT_MOUSEOVER = "Shapeshift/Stance/Totem bars on mouseover"
	L_GUI_ACTIONBAR_SHAPESHIFT_HIDE = "Hide shapeshift"
	L_GUI_ACTIONBAR_SHAPESHIFT_HORIZONTAL = "Enable horizontal stance bar"  -- Needs review
	
	-- Auras/Buffs/Debuffs
	L_GUI_AURA_FONT_SIZE = "Auras font size"  -- Needs review
	L_GUI_AURA_PLAYER_BUFF_SIZE = "Player buffs size"  -- Needs review
	L_GUI_AURA_SHOW_SPIRAL = "Spiral on aura icons"
	L_GUI_AURA_SHOW_TIMER = "Show cooldown timer on aura icons"
	L_GUI_AURA_PLAYER_AURAS = "Auras on player frame"
	L_GUI_AURA_TARGET_AURAS = "Auras on target frame"
	L_GUI_AURA_FOCUS_DEBUFFS = "DeBuffs on focus frame"
	L_GUI_AURA_PET_DEBUFFS = "DeBuffs on pet frame"
	L_GUI_AURA_TOT_DEBUFFS = "DeBuffs on targettarget frame"
	L_GUI_AURA_PLAYER_AURA_ONLY = "Only your debuff on target frame"
	L_GUI_AURA_DEBUFF_COLOR_TYPE = "Color debuff by type"
	
	-- Unit frame options
	L_GUI_UF_ENABLE = "Enable unit frames"
	L_GUI_UF_FONT_SIZE = "Font size"
	L_GUI_UF_AGGRO_BORDER = "Aggro border"
	L_GUI_UF_OWN_COLOR = "Set your color for health bars"
	L_GUI_UF_ENEMY_HEALTH_COLOR = "Enemy target healthbar is red"
	L_GUI_UF_TOTAL_VALUE = "Display of info text on player and target with XXXX/Total"
	L_GUI_UF_DEFICIT_HEALTH = "Raid deficit health"
	L_GUI_UF_COLOR_VALUE = "Health/mana value is colored"
	L_GUI_UF_UNIT_CASTBAR = "Show castbars"
	L_GUI_UF_CASTBAR_ICON = "Show castbar icons"
	L_GUI_UF_CASTBAR_LATENCY = "Castbar latency"
	L_GUI_UF_SHOW_BOSS = "Show boss frames"
	L_GUI_UF_SHOW_ARENA = "Show arena frames"
	L_GUI_UF_ARENA_RIGHT = "Arena frames on the right"
	L_GUI_UF_SHOW_RAID = "Show raid frames"
	L_GUI_UF_VERTICAL_HEALTH = "Vertical orientation of health"
	L_GUI_UF_ALPHA_HEALTH = "Alpha of healthbars when 100%hp"
	L_GUI_UF_SHOW_RANGE = "Show range opacity for raidframes"
	L_GUI_UF_RANGE_ALPHA = "Alpha of unitframes when unit is out of range"
	L_GUI_UF_SOLO_MODE = "Show player frame always"
	L_GUI_UF_PLAYER_PARTY = "Show player frame in party"
	L_GUI_UF_SHOW_TANK = "Show raid tanks"
	L_GUI_UF_RAID_GROUP = "Number of groups in raid(Only for ShestakUI_Heal)"
	L_GUI_UF_RAID_VERTICAL_GROUP = "Vertical raid groups(Only for ShestakUI_Heal)"  -- Needs review
	L_GUI_UF_ICONS_PVP = "Mouseover pvp text(not icons) on player and target frames"
	L_GUI_UF_ICONS_LEADER = "Leader icon, assistant icon, master loot icon on frames"
	L_GUI_UF_ICONS_COMBAT = "Combat icon"
	L_GUI_UF_ICONS_RESTING = "Resting icon for low lvl chars"
	L_GUI_UF_ICONS_LFD_ROLE = "Party role icon on frames"
	L_GUI_UF_ICONS_RAID_MARK = "Raid marks"
	L_GUI_UF_ICONS_COMBO_POINT = "Rogue|Druid combo point icons"
	L_GUI_UF_ICONS_READY_CHECK = "Ready check icons"
	L_GUI_UF_PORTRAIT_ENABLE = "Enable player/target portraits"
	L_GUI_UF_PORTRAIT_CLASSCOLOR_BORDER = "Classcolor border for portraits"
	L_GUI_UF_PORTRAIT_HEIGHT = "Portrait height"
	L_GUI_UF_PORTRAIT_WIDTH = "Portrait width"
	L_GUI_UF_PLUGINS_GCD = "Global cooldown spark"
	L_GUI_UF_PLUGINS_SWING = "Swing bar"
	L_GUI_UF_PLUGINS_ECLIPSE_BAR = "Enable eclipse bar"
	L_GUI_UF_PLUGINS_HOLY_BAR = "Enable holy power bar"
	L_GUI_UF_PLUGINS_SHARD_BAR = "Enable shards bar"
	L_GUI_UF_PLUGINS_RUNE_BAR = "Rune bar"
	L_GUI_UF_PLUGINS_TOTEM_BAR = "Totem bar"
	L_GUI_UF_PLUGINS_TOTEM_BAR_NAME = "Totem name"
	L_GUI_UF_PLUGINS_REPUTATION_BAR = "Reputation bar"
	L_GUI_UF_PLUGINS_EXPERIENCE_BAR = "Experience bar"
	L_GUI_UF_PLUGINS_SMOOTH_BAR = "Smooth bar"
	L_GUI_UF_PLUGINS_TALENTS = "Show enemy talent spec"
	L_GUI_UF_PLUGINS_COMBAT_FEEDBACK = "Combat text on player/target frame"
	L_GUI_UF_PLUGINS_DEBUFFHIGHLIGHT_ICON = "Debuff highlight texture + icon"
	L_GUI_UF_PLUGINS_AURA_WATCH = "*RAID* Auras watch"
	L_GUI_UF_PLUGINS_HEALCOMM = "oUF_HealComm4 on raid frame"
	L_GUI_UF_PLUGINS_HEALCOMM_BAR = "Bar incoming heal"
	L_GUI_UF_PLUGINS_HEALCOMM_OVER = "Overheal bar"
	L_GUI_UF_PLUGINS_HEALCOMM_TEXT = "Text incoming heal"
	L_GUI_UF_PLUGINS_HEALCOMM_OTHERS = "Hide your incoming heal"
	
	-- Panel options
	L_GUI_TOP_PANEL = "Top panel"
	L_GUI_TOP_PANEL_MOUSE = "Top panel on mouseover"
	L_GUI_TOP_PANEL_WIDTH = "Panel width"
	L_GUI_TOP_PANEL_HEIGHT = "Panel height"
	
	-- Stats options
	L_GUI_STATS = "Stats"
	L_GUI_STATS_FONT_SIZE = "Stats font size"
	L_GUI_STATS_BG = "Battleground"
	L_GUI_STATS_CLOCK = "Clock"
	L_GUI_STATS_LATENCY = "Latency"
	L_GUI_STATS_MEMORY = "Memory"
	L_GUI_STATS_FPS = "FPS"
	L_GUI_STATS_EXPERIENCE = "Experience"
	L_GUI_STATS_COORDS = "Coords"
	L_GUI_STATS_LOCATION = "Location"
	
	-- Error options
	L_GUI_ERROR = "Errors"
	L_GUI_ERROR_HIDE = "Hide errors"
	L_GUI_ERROR_BLACK = "Hide errors from black list"
	L_GUI_ERROR_WHITE = "Show errors from white list"
	L_GUI_ERROR_HIDE_COMBAT = "Hide errors in combat"
end