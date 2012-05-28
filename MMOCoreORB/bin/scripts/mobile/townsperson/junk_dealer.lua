junk_dealer = Creature:new {
	objectName = "@mob/creature_names:junk_dealer",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
			"object/mobile/junk_nathan.iff",
			"object/mobile/junk_lila.iff",
			"object/mobile/junk_malik.iff",
			"object/mobile/junk_nado.iff",
			"object/mobile/junk_reggi.iff",
			"object/mobile/junk_sheani.iff",
			"object/mobile/junk_sneg.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(junk_dealer, "junk_dealer")