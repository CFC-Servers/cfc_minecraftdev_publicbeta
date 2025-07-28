// Made by Cold_Comfort 22.07.25

import crafttweaker.api.entity.attribute.Attribute;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.equipment.EquipmentSlot;
import crafttweaker.api.item.IItemStack;


//Please note that values of knockback resistance are percentages and you should input percentages as decimals not as integers. (e.g. 10% knockback resistance is 0.1) - Cold

function repl_armormodifier(itemid as IItemStack, armor as double, armor_toughness as double, knockback_resistance as double, equipment_modifier as EquipmentSlot) as void {
    itemid.removeGlobalAttribute(<attribute:minecraft:generic.armor>, [equipment_modifier]);
    itemid.addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "Armor", armor, AttributeOperation.ADDITION, [equipment_modifier]);
    itemid.removeGlobalAttribute(<attribute:minecraft:generic.armor_toughness>, [equipment_modifier]);
    itemid.addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "Armor Toughness", armor_toughness, AttributeOperation.ADDITION, [equipment_modifier]);
    itemid.removeGlobalAttribute(<attribute:minecraft:generic.knockback_resistance>, [equipment_modifier]);
    itemid.addGlobalAttributeModifier(<attribute:minecraft:generic.knockback_resistance>, "Knockback Resistance", knockback_resistance, AttributeOperation.ADDITION, [equipment_modifier]);
    print("[CFCMC_EA] Modified base attributes for ARMOR : " + itemid.displayName + " WITH (ARMOR_VAL: " + armor + " ARMOR_TOUGH: " + armor_toughness + " KNOCKBACK_RESIST: " + knockback_resistance + " )");
}

//Please note that the base value of the Attack Speed attribute is 4 on some items, in order to revert to something like 1.6, you may have to feed the function a negative value. - Cold

function repl_toolmodifier(itemid as IItemStack, entity_reach as double, attack_speed as double, attack_damage as double) as void {
    itemid.removeGlobalAttribute(<attribute:forge:entity_reach>, [EquipmentSlot.MAINHAND]);
    itemid.addGlobalAttributeModifier(<attribute:forge:entity_reach>, "Entity Reach", entity_reach, AttributeOperation.ADDITION, [EquipmentSlot.MAINHAND]);
    itemid.removeGlobalAttribute(<attribute:minecraft:generic.attack_speed>, [EquipmentSlot.MAINHAND]);
    itemid.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_speed>, "Attack Speed", attack_speed, AttributeOperation.ADDITION, [EquipmentSlot.MAINHAND]);
    itemid.removeGlobalAttribute(<attribute:minecraft:generic.attack_damage>, [EquipmentSlot.MAINHAND]);
    itemid.addGlobalAttributeModifier(<attribute:minecraft:generic.attack_damage>, "Attack Damage", attack_damage, AttributeOperation.ADDITION, [EquipmentSlot.MAINHAND]);
    print("[CFCMC_EA] Modified base attributes for TOOL : " + itemid.displayName + " WITH (ENT_REACH: " + entity_reach + " ATK_SPEED: " + attack_speed + " ATK_DMG: " + attack_damage + " )");
}

// Examples
//repl_armormodifier(<item:minecraft:leather_helmet>, 1, 1, 1, EquipmentSlot.HEAD);
//repl_toolmodifier(<item:minecraft:wooden_sword>, 1, -2.4, 1);

// Armours
//Netherite is swapped with refined obsidian with a minor debuff ( applies to tools too ) - Cold
repl_armormodifier(<item:mekanismtools:refined_obsidian_helmet>, 3, 3, 0.1, EquipmentSlot.HEAD);
repl_armormodifier(<item:mekanismtools:refined_obsidian_chestplate>, 8, 3, 0.1, EquipmentSlot.CHEST);
repl_armormodifier(<item:mekanismtools:refined_obsidian_leggings>, 6, 3, 0.1, EquipmentSlot.LEGS);
repl_armormodifier(<item:mekanismtools:refined_obsidian_boots>, 3, 3, 0.1, EquipmentSlot.FEET);

repl_armormodifier(<item:minecraft:netherite_helmet>, 5, 5, 0.2, EquipmentSlot.HEAD);
repl_armormodifier(<item:minecraft:netherite_chestplate>, 11.5, 4.5, 0.2, EquipmentSlot.CHEST);
repl_armormodifier(<item:minecraft:netherite_leggings>, 8, 5, 0.2, EquipmentSlot.LEGS);
repl_armormodifier(<item:minecraft:netherite_boots>, 6, 5, 0.2, EquipmentSlot.FEET);
// Osmium is balanced to be exactly like diamond ( also applies to tools too ) - Cold
repl_armormodifier(<item:mekanismtools:osmium_helmet>, 3, 2, 0, EquipmentSlot.HEAD);
repl_armormodifier(<item:mekanismtools:osmium_chestplate>, 8, 2, 0, EquipmentSlot.CHEST);
repl_armormodifier(<item:mekanismtools:osmium_leggings>, 6, 2, 0, EquipmentSlot.LEGS);
repl_armormodifier(<item:mekanismtools:osmium_boots>, 3, 2, 0, EquipmentSlot.FEET);

// Tools

repl_toolmodifier(<item:mekanismtools:osmium_pickaxe>, 3, -2.8, 5);
repl_toolmodifier(<item:mekanismtools:osmium_axe>, 3, -3, 9);
repl_toolmodifier(<item:mekanismtools:osmium_paxel>, 3, -3, 5.5);
repl_toolmodifier(<item:mekanismtools:osmium_hoe>, 3, 0, 4);
repl_toolmodifier(<item:mekanismtools:osmium_shovel>, 3, -3, 5.5);
repl_toolmodifier(<item:mekanismtools:osmium_sword>, 3, -2.4, 7);

repl_toolmodifier(<item:minecraft:netherite_pickaxe>, 3, -2.8, 10);
repl_toolmodifier(<item:minecraft:netherite_axe>, 3, -2.9, 12);
repl_toolmodifier(<item:mekanismtools:netherite_paxel>, 3, -2.4, 17);
repl_toolmodifier(<item:minecraft:netherite_hoe>, 3, 5, 1);
repl_toolmodifier(<item:minecraft:netherite_shovel>, 3, -3, 10.5);
repl_toolmodifier(<item:minecraft:netherite_sword>, 3, -2.4, 12);

repl_toolmodifier(<item:mekanismtools:refined_obsidian_pickaxe>, 3, -2.8, 6);
repl_toolmodifier(<item:mekanismtools:refined_obsidian_axe>, 3, -3, 10);
repl_toolmodifier(<item:mekanismtools:refined_obsidian_paxel>, 3, -2.4, 11);
repl_toolmodifier(<item:mekanismtools:refined_obsidian_hoe>, 3, 0, 1);
repl_toolmodifier(<item:mekanismtools:refined_obsidian_shovel>, 3, -3, 6.5);
repl_toolmodifier(<item:mekanismtools:refined_obsidian_sword>, 3, -2.4, 8);

// FUCKING FINALLY!!!