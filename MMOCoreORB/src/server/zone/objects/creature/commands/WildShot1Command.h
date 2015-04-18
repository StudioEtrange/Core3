/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WILDSHOT1COMMAND_H_
#define WILDSHOT1COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "CombatQueueCommand.h"

class WildShot1Command : public CombatQueueCommand {
public:

	WildShot1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isCarbineWeapon()) {
			return INVALIDWEAPON;
		}

		return doCombatAction(creature, target);

	}

};

#endif //WILDSHOT1COMMAND_H_
