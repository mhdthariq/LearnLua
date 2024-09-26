-- Base class Character
Character = {}
Character.__index = Character

-- Constructor
function Character:new(name, health, position)
  local instance = setmetatable({}, self)
  instance.name = name
  instance.health = health
  instance.position = position
  return instance
end

-- Method for moving
function Character:canMove()
  print(self.name .. " moves to another position!")
end

-- Behavior can attack
function CanAttack(Character)
  function Character:attack()
    print(self.name .. " attacks with a weapon!")
  end
end

-- Behavior can defend
function CanDefend(Character)
  function Character:defend()
    print(self.name .. " defends with a shield!")
  end
end

-- Behavior can cast spell
function CanCastSpell(Character)
  function Character:castSpell()
    print(self.name .. " casts a spell!")
  end
end

-- Function Create monster
function CreateMonster(name)
  local monster = Character:new(name, 100, "position")
  CanAttack(monster)
  return monster
end

-- FUnction Create guardian
function CreateGuardian(name)
  local guardian = Character:new(name, 100, "position")
  CanDefend(guardian)
  return guardian
end

-- Function Create wizard
function CreateWizard(name)
  local wizard = Character:new(name, 100, "position")
  CanCastSpell(wizard)
  return wizard
end

-- Function Create warrior
function CreateWarrior(name)
  local warrior = Character:new(name, 100, "position")
  CanAttack(warrior)
  CanDefend(warrior)
  return warrior
end

-- Use the functions to create instances
local monster = CreateMonster("Monster")
monster:canMove()
monster:attack()

local guardian = CreateGuardian("Guardian")
guardian:canMove()
guardian:defend()

local wizard = CreateWizard("Wizard")
wizard:canMove()
wizard:castSpell()

local warrior = CreateWarrior("Warrior")
warrior:canMove()
warrior:attack()
warrior:defend()