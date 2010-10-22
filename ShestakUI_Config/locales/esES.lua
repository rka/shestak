----------------------------------------------------------------------------------------
--	Localization for esES client(Thanks to Revisado for the translation)
----------------------------------------------------------------------------------------
if GetLocale() == "esES" then
	L_GUI_BUTTON_RESET = "Reset total de la UI"
	-- General options
	L_GUI_GENERAL_UIICON = "Icono de la UI cerca del minimapa"
	L_GUI_GENERAL_AUTOSCALE = "Auto escalado de la UI"
	L_GUI_GENERAL_MULTISAMPLE = "Protecciуn del Multimuestro (elimina el borde de 1px)"
	L_GUI_GENERAL_UISCALE = "Escalado de la UI (si auto escalado estб desactivado)"
	L_GUI_GENERAL_WELCOME_MESSAGE = "Mensaje de bienvenida en el chat"

	-- Miscellaneous options (Opciones miscelбneas)
	L_GUI_MISC_AUTOQUEST = "Auto aceptar misiones"
	L_GUI_MISC_AUTODUEL = "Auto rechazar duelos"
	L_GUI_MISC_AUTOACCEPT = "Auto aceptar invitaciones"
	L_GUI_MISC_AUTORESSURECT = "Auto resurrecciуn en los Campos de Batalla"
	L_GUI_MISC_MARKING = "Marca el objetivo cuando pulsas *shift*"
	L_GUI_MISC_INVKEYWORD = "Acrуnimo para invitaciones (/ainv)"
	L_GUI_MISC_RAID_PLANNER = "Activar planificador de Banda(/com)"
	L_GUI_MISC_SPIN_CAMERA = "Rotar cбmara mientras estбs ausente"
	L_GUI_MISC_MOVE_WATCH_FRAME = "Marco de Seguimiento de Misiones movible"
	L_GUI_MISC_VEHICLE_MOUSEOVER = "Marco del Vehнculo al pasar el ratуn por encima"
	
	-- Skins options (Opciones de pieles)
	L_GUI_SKINS = "Estilizaciуn"
	L_GUI_SKINS_DBM = "Activar estilo del DBM"
	L_GUI_SKINS_PP = "Activar estilo del PallyPower"
	
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
	
	-- Buffs reminder options (Opciones del Recordatorio de Buffs)
	L_GUI_REMINDER = "Recordatorio de Buffs"
	L_GUI_REMINDER_SOLO_ENABLE = "Mostrar buffs propios que faltan"
	L_GUI_REMINDER_SOLO_SOUND = "Alerta sonora para avisar de buffs propios"
	L_GUI_REMINDER_SOLO_SIZE = "Tamaсo de los iconos de los buffs propios"
	L_GUI_REMINDER_RAID_ENABLE = "Mostrar buffs que faltan en la Banda"
	L_GUI_REMINDER_RAID_ALWAYS = "Mostrar Recordatorio de Buffs siempre"
	L_GUI_REMINDER_RAID_SIZE = "Tamaсo de los iconos de los buffs de la Banda"
	L_GUI_REMINDER_RAID_ALPHA = "Icono transparente cuando el buff estй presente"
	
	-- Raid/Enemy cooldown options (Opciones de tiempos de reutilizaciуn Banda/Enemigo)
	L_GUI_COOLDOWN = "Tiempos de reutilizaciуn Banda/Enemigo"
	L_GUI_COOLDOWN_RAID_ENABLE = "Mostrar tiempos de reutilizaciуn de la Banda"
	L_GUI_COOLDOWN_RAID_FONT = "Tamaсo de la fuente de los tiempos de reutilizaciуn de la Banda"
	L_GUI_COOLDOWN_RAID_HEIGHT = "Altura de las barras de tiempo de reutilizaciуn de la Banda"
	L_GUI_COOLDOWN_RAID_WIDTH = "Anchura de las barras de tiempo de reutilizaciуn de la Banda (Si el icono estб activado, anchura+28)"
	L_GUI_COOLDOWN_RAID_SORT = "Barras de tiempos de reutilizaciуn de la Banda ordenadas hacia arriba"
	L_GUI_COOLDOWN_RAID_ICONS = "Iconos de tiempos de reutilizaciуn de la Banda"
	L_GUI_COOLDOWN_RAID_IN_RAID = "Mostrar tiempos de reutilizaciуn de la Banda en zona de Banda"
	L_GUI_COOLDOWN_RAID_IN_PARTY = "Mostrar tiempos de reutilizaciуn de la Banda en zona de Grupo"
	L_GUI_COOLDOWN_RAID_IN_ARENA = "Mostrar tiempos de reutilizaciуn de la Banda en zona de Arena"
	L_GUI_COOLDOWN_ENEMY = "Activar tiempos de reutilizaciуn del enemigo"
	L_GUI_COOLDOWN_ENEMY_SIZE = "Tamaсo del icono de tiempos de reutilizaciуn del enemigo"
	L_GUI_COOLDOWN_ENEMY_EVERYWHERE = "Mostrar tiempos de reutilizaciуn del enemigo siempre"
	L_GUI_COOLDOWN_ENEMY_IN_BG = "Mostrar tiempos de reutilizaciуn del enemigo en zona de CB"
	L_GUI_COOLDOWN_ENEMY_IN_ARENA = "Mostrar tiempos de reutilizaciуn del enemigo en zona de Arena"
	
	-- Threat options (Opciones de Barras de Amenaza)
	L_GUI_THREAT = "Barras de Amenaza"
	L_GUI_THREAT_ENABLE = "Activar Barras de Amenaza"
	L_GUI_THREAT_FONT_SIZE = "Tamaсo de la fuente de las barras de amenaza"
	L_GUI_THREAT_HEIGHT = "Altura de las barras de amenaza"
	L_GUI_THREAT_WIDTH = "Anchura de las barras de amenaza"
	L_GUI_THREAT_ROWS = "Nъmero de barras de amenaza"
	L_GUI_THREAT_TEST_MODE = "Activar el modo test de Barras de Amenaza"
	
	-- Tooltip options (Opciones de las descripciones)
	L_GUI_TOOLTIP = "Descripciones"
	L_GUI_TOOLTIP_ENABLE = "Activar descripciones"
	L_GUI_TOOLTIP_SHIFT = "Mostrar descripciуn mientras *shift* estй pulsado"
	L_GUI_TOOLTIP_CURSOR = "Descripciуn bajo el cursos"
	L_GUI_TOOLTIP_ICON = "Icono del objeto en la descripciуn"
	L_GUI_TOOLTIP_HEALTH = "Valor de la vida en nъmeros"
	L_GUI_TOOLTIP_HIDE = "Ocultar descripciones de las barras de acciуn"
	L_GUI_TOOLTIP_TALENTS = "Mostrar descripciуn de los talentos"
	L_GUI_TOOLTIP_ACHIEVEMENTS = "Comparar logros en la descripciуn"
	L_GUI_TOOLTIP_TARGET = "Jugador objetivo en la descripciуn"
	L_GUI_TOOLTIP_TITLE = "Tнtulo del jugador en la descripciуn"
	L_GUI_TOOLTIP_RANK = "Rango del jugador en la hermandad en la descripciуn"
	L_GUI_TOOLTIP_ARENA_EXPERIENCE = "Experiencia JcJ del jugador en Arenas en la descripciуn"
	
	-- Chat options (Opciones del chat)
	L_GUI_CHAT_ENABLE = "Activar chat"
	L_GUI_CHAT_BACKGROUND = "Activar fondo del chat"
	L_GUI_CHAT_BACKGROUND_ALPHA = "Opacidad del fondo del chat"
	L_GUI_CHAT_FONT_SIZE = "Tamaсo de la fuente del chat"
	L_GUI_CHAT_FONT_STYLE = "Estilo de la fuente"
	L_GUI_CHAT_TAB_FONT_SIZE = "Tamaсo de la fuente de las pestaсas"
	L_GUI_CHAT_TAB_FONT_STYLE = "Estilo de la fuente de las pestaсas"
	L_GUI_CHAT_SPAM = "Eliminar ciertos mensajes de spam(*Jugador1* ha ganado un duelo a *Jugador2*)"
	L_GUI_CHAT_WIDTH = "Anchura del chat"
	L_GUI_CHAT_HEIGHT = "Altura del chat"
	L_GUI_CHAT_BAR = "Pequeсa barra de botones para cambiar de canal en el chat"
	L_GUI_CHAT_TIMESTAMP = "Color de la marca de tiempo"
	L_GUI_CHAT_WHISP = "Sonido cuando te susurran"
	
	-- Bag options (Opciones de las bolsas)
	L_GUI_BAGS = "Bolsas"
	L_GUI_BAGS_BUTTON_SIZE = "Tamaсo de los huecos"
	L_GUI_BAGS_BUTTON_SPACE = "Espacio entre huecos"
	L_GUI_BAGS_BANK = "Nъmero de columnas en el banco"
	L_GUI_BAGS_BAG = "Nъmero de columnas en la bolsa principal"
	
	-- Minimap options (Opciones del minimapa)
	L_GUI_MINIMAP_ENABLE = "Activar minimapa"
	L_GUI_MINIMAP_ICON = "Icono de seguimiento"
	L_GUI_MINIMAP_SIZE = "Tamaсo del minimapa"
	L_GUI_MINIMAP_HIDE_COMBAT = "Ocultar minimapa en combate"
	
	-- Map options (Opciones del mapa)
	L_GUI_MAP_ENABLE = "Activar mapa del mundo"
	L_GUI_MAP_SCALE = "Escalado del mapa del mundo"
	L_GUI_MAP_BG_STYLIZATION = "Estilizado del mapa de CB"
	
	-- Loot options (Opciones del botнn)
	L_GUI_LOOT_ENABLE = "Activar el marco de botнn"
	L_GUI_LOOT_ROLL_ENABLE = "Activar el marco de botнn de grupo"
	L_GUI_LOOT_FONT_SIZE = "Tamaсo de la fuente del marco de botнn"
	L_GUI_LOOT_ICON_SIZE = "Tamaсo de los iconos"
	L_GUI_LOOT_WIDTH = "Anchura del marco de botнn"
	L_GUI_LOOT_AUTOGREED = "Activar auto-codicia para objetos verdes cuando eres nivel max"
	L_GUI_LOOT_AUTODE = "Auto confirmar desencantar"
	
	-- Nameplate options (Opciones de las placas de nombre)
	L_GUI_NAMEPLATE_ENABLE = "Activar placas de nombre"
	L_GUI_NAMEPLATE_COMBAT = "Mostrar automбticamente placa de nombre en combate"
	L_GUI_NAMEPLATE_HEALTH = "Valor de la vida en nъmeros"
	L_GUI_NAMEPLATE_CASTBAR = "Mostrar barra de lanzamiento en la placa de nombre"
	L_GUI_NAMEPLATE_FONT_SIZE = "Tamaсo de la fuente de la placa de nombre"
	L_GUI_NAMEPLATE_HEIGHT = "Altura de la placa de nombre"
	L_GUI_NAMEPLATE_WIDTH = "Anchura de la placa de nombre"
	L_GUI_NAMEPLATE_CASTBAR_NAME = "Mostrar nombre del hechizo en la barra de lanzamiento"
	L_GUI_NAMEPLATE_THREAT = "Si el tanque tiene aggro alto = verde, bajo = rojo"
	L_GUI_NAMEPLATE_CLASS_ICON = "Iconos de clase en JcJ"
	L_GUI_NAMEPLATE_NAME_ABBREV = "Mostrar los nombres abreviados"
	
	-- ActionBar options (Opciones de las barras de acciуn
	L_GUI_ACTIONBAR_ENABLE = "Activar barras de acciуn"
	L_GUI_ACTIONBAR_HOTKEY = "Mostrat texto los atajos de teclado"
	L_GUI_ACTIONBAR_GRID = "Mostrar botones de la barra de acciуn vacios"
	L_GUI_ACTIONBAR_BUTTON_SIZE = "Tamaсo de los botones"
	L_GUI_ACTIONBAR_BUTTON_SPACE = "Espacio entre botones"
	L_GUI_ACTIONBAR_BOTTOMBARS = "Nъmero de barras de acciуn abajo (1, 2 o 3)"
	L_GUI_ACTIONBAR_RIGHTBARS = "Nъmero de barras de acciуn en la derecha (0, 1, 2 o 3)"
	L_GUI_ACTIONBAR_RIGHTBARS_MOUSEOVER = "Barras de la derecha se muestran al pasar el ratуn"
	L_GUI_ACTIONBAR_PETBAR_MOUSEOVER = "Barra de mascota al pasar el ratуn(sуlo para la barra de mascota horizontal)"
	L_GUI_ACTIONBAR_PETBAR_HIDE = "Ocultar barra de mascota"
	L_GUI_ACTIONBAR_PETBAR_HORIZONTAL = "Activar barra de mascota horizontal"
	L_GUI_ACTIONBAR_SHAPESHIFT_MOUSEOVER = "Barras de Cambios de forma/Estancias/TotemsShapeshift/Stance/Totem al pasar el ratуn"
	L_GUI_ACTIONBAR_SHAPESHIFT_HIDE = "Ocultar cambio de forma"
	L_GUI_ACTIONBAR_SHAPESHIFT_HORIZONTAL = "Activar barra de estancia horizontal"
	
	-- Auras/Buffs/Debuffs
	L_GUI_AURA_FONT_SIZE = "Auras font size"  -- Needs review
	L_GUI_AURA_PLAYER_BUFF_SIZE = "Player buffs size"  -- Needs review
	L_GUI_AURA_SHOW_SPIRAL = "Spiral on aura icons"  -- Needs review
	L_GUI_AURA_SHOW_TIMER = "Show cooldown timer on aura icons"  -- Needs review
	L_GUI_AURA_PLAYER_AURAS = "Auras on player frame"  -- Needs review
	L_GUI_AURA_TARGET_AURAS = "Auras on target frame"  -- Needs review
	L_GUI_AURA_FOCUS_DEBUFFS = "DeBuffs on focus frame"  -- Needs review
	L_GUI_AURA_FOT_DEBUFFS = "DeBuffs on focus target frame"  -- Needs review
	L_GUI_AURA_PET_DEBUFFS = "DeBuffs on pet frame"  -- Needs review
	L_GUI_AURA_TOT_DEBUFFS = "DeBuffs on targettarget frame"  -- Needs review
	L_GUI_AURA_PLAYER_AURA_ONLY = "Only your debuff on target frame"  -- Needs review
	L_GUI_AURA_DEBUFF_COLOR_TYPE = "Color debuff by type"  -- Needs review
	
	-- Unit frame options (Opciones de los marcos de unidades)
	L_GUI_UF_ENABLE = "Activar marcos de unidades"
	L_GUI_UF_FONT_SIZE = "Tamaсo de la fuente"
	L_GUI_UF_AGGRO_BORDER = "Borde de aggro"
	L_GUI_UF_OWN_COLOR = "Color para las barras de vida"
	L_GUI_UF_ENEMY_HEALTH_COLOR = "Barra de vida del enemigo objetivo en rojo"
	L_GUI_UF_TOTAL_VALUE = "Mostrar vida restante en jugador y objetivo con XXXX/Total"
	L_GUI_UF_DEFICIT_HEALTH = "Dйficit de vida de la Banda"
	L_GUI_UF_COLOR_VALUE = "Colorear valor de Vida/Manб"
	L_GUI_UF_UNIT_CASTBAR = "Mostrar barras de lanzamiento"
	L_GUI_UF_CASTBAR_ICON = "Mostrar iconos en las barras de lanzamiento"
	L_GUI_UF_CASTBAR_LATENCY = "Latencia en la barra de lanzamiento"
	L_GUI_UF_SHOW_BOSS = "Mostrar marco del jefe"
	L_GUI_UF_SHOW_ARENA = "Mostrar marcos de arena"
	L_GUI_UF_ARENA_RIGHT = "Marcos de arena en la derecha"
	L_GUI_UF_SHOW_RAID = "Mostrar marcos de banda"
	L_GUI_UF_VERTICAL_HEALTH = "Orientaciуn verrtical de la vida"
	L_GUI_UF_ALPHA_HEALTH = "Opacidad de las barras de vida cuando estбn al 100%"
	L_GUI_UF_SHOW_RANGE = "Mostrar rango de opacidad para los marcos de banda"
	L_GUI_UF_RANGE_ALPHA = "Opacidad de los marcos de unidades cuando estбn fuera de rango"
	L_GUI_UF_SOLO_MODE = "Mostrar marco del jugador siempre"
	L_GUI_UF_PLAYER_PARTY = "Mostrar marco del jugador en grupo"
	L_GUI_UF_SHOW_TANK = "Mostrar tanques de la banda"
	L_GUI_UF_RAID_GROUP = "Nъmero de grupos en la banda(Solo para ShestakUI_Heal)"
	L_GUI_UF_RAID_VERTICAL_GROUP = "Vertical raid groups(Only for ShestakUI_Heal)"  -- Needs review
	L_GUI_UF_ICONS_PVP = "Texto JcJ (iconos no) al pasar el ratуn sobre los marcos del jugador y objetivo"
	L_GUI_UF_ICONS_LEADER = "Iconos de lнder, ayudantes y maestro despojador en los marcos"
	L_GUI_UF_ICONS_COMBAT = "Icono de combate"
	L_GUI_UF_ICONS_RESTING = "Icono de descansado para pjs con nivel bajo"
	L_GUI_UF_ICONS_LFD_ROLE = "Iconos de rol en el grupo en los marcos"
	L_GUI_UF_ICONS_RAID_MARK = "Marcas de banda"
	L_GUI_UF_ICONS_COMBO_POINT = "Iconos de puntos de combo de Pнcaros|Druidas"
	L_GUI_UF_ICONS_READY_CHECK = "Iconos de comprobaciуn"
	L_GUI_UF_PORTRAIT_ENABLE = "Activar retratos del jugador/objetivo"
	L_GUI_UF_PORTRAIT_CLASSCOLOR_BORDER = "Borde de color de clase para los retratos"
	L_GUI_UF_PORTRAIT_HEIGHT = "Altura del retrato"
	L_GUI_UF_PORTRAIT_WIDTH = "Anchura del retrato"
	L_GUI_UF_PLUGINS_GCD = "Brillo de tiempo de reutilizaciуn global"
	L_GUI_UF_PLUGINS_SWING = "Activar barra de oscilaciуn"
	L_GUI_UF_PLUGINS_ECLIPSE_BAR = "Activar barra de eclipse"
	L_GUI_UF_PLUGINS_HOLY_BAR = "Activar barra de poder sagrado"
	L_GUI_UF_PLUGINS_SHARD_BAR = "Activar barra de fragmentos"
	L_GUI_UF_PLUGINS_RUNE_BAR = "Activar barra de Runas"
	L_GUI_UF_PLUGINS_TOTEM_BAR = "Activar barra de totems"
	L_GUI_UF_PLUGINS_TOTEM_BAR_NAME = "Nombre de la barra de totems"
	L_GUI_UF_PLUGINS_REPUTATION_BAR = "Activar barra de reputaciуn"
	L_GUI_UF_PLUGINS_EXPERIENCE_BAR = "Activar barra de experiencia"
	L_GUI_UF_PLUGINS_SMOOTH_BAR = "Activar barra de suavizado"
	L_GUI_UF_PLUGINS_TALENTS = "Mostrar configuraciуn de los talentos del enemigo"
	L_GUI_UF_PLUGINS_COMBAT_FEEDBACK = "Texto de combate en el marco del jugador/objetivo"
	L_GUI_UF_PLUGINS_DEBUFFHIGHLIGHT_ICON = "Remarcar textura de desventajas + icono"
	L_GUI_UF_PLUGINS_AURA_WATCH = "*BANDA* Ver las auras"
	L_GUI_UF_PLUGINS_HEALCOMM = "oUF_HealComm4 en el marco de banda"
	L_GUI_UF_PLUGINS_HEALCOMM_BAR = "Barra de sanaciуn en camino"
	L_GUI_UF_PLUGINS_HEALCOMM_OVER = "Barra de sobresanaciуn"
	L_GUI_UF_PLUGINS_HEALCOMM_TEXT = "Texto de sanaciуn en camino"
	L_GUI_UF_PLUGINS_HEALCOMM_OTHERS = "Ocultar tu sanaciуn en camino"
	
	-- Panel options (Opciones del panel)
	L_GUI_TOP_PANEL = "Activar panel superior"
	L_GUI_TOP_PANEL_MOUSE = "Panel superior al pasar el ratуn"
	L_GUI_TOP_PANEL_WIDTH = "Anchura del panel"
	L_GUI_TOP_PANEL_HEIGHT = "Altura del panel"
	
	-- Stats options (Opciones de estadнsticas)
	L_GUI_STATS = "Estadнsticas"
	L_GUI_STATS_FONT_SIZE = "Tamaсo de la fuente de las estadнsticas"
	L_GUI_STATS_BG = "Campo de Batalla"
	L_GUI_STATS_CLOCK = "Reloj"
	L_GUI_STATS_LATENCY = "Latencia"
	L_GUI_STATS_MEMORY = "Memoria"
	L_GUI_STATS_FPS = "FPS (Marcos por segundo)"
	L_GUI_STATS_EXPERIENCE = "Experiencia"
	L_GUI_STATS_COORDS = "Coordenadas"
	L_GUI_STATS_LOCATION = "Localizaciуn"
	
	-- Error options (Opciones de errores)
	L_GUI_ERROR = "Errores"
	L_GUI_ERROR_HIDE = "Ocultar errores"
	L_GUI_ERROR_BLACK = "Ocultar errores de la lista negra"
	L_GUI_ERROR_WHITE = "Mostrar errores de la lista blanca"
	L_GUI_ERROR_HIDE_COMBAT = "Ocultar errores en combate"
end