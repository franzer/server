-----------------------------------
-- Lightning Armor
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local power = 10
    local duration = 180
    local typeEffect = xi.effect.SHOCK_SPIKES

    skill:setMsg(xi.mobskills.mobBuffMove(mob, typeEffect, power, 0, duration))

    return typeEffect
end

return mobskillObject
