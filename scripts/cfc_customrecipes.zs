// Made by Cold_Comfort 22.07.25

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredientWithAmount;

// Makes a new empty tag since sometimes <item:minecraft:air> doesn't work
val emptyTag = <tag:items:cfcmc:empty>;
emptyTag.add(<item:minecraft:air>);
if (<tagmanager:items>.exists(<tag:items:cfcmc:empty>) == true) {
    print("[CFCMC_CR] [PATCH] Loaded placeholder tag successfully ");
} else {
    print("[CFCMC_CR] [PATCH] Doh fiddlesticks, placeholder tag doesn't exist");
}


// Recipe Remover 


var arr_rmrecipe = [
    <item:mekanism:digital_miner>, //0
    <item:mekanism:mekasuit_helmet>, //1
    <item:mekanism:mekasuit_bodyarmor>, //2
    <item:mekanism:mekasuit_pants>, //3
    <item:mekanism:mekasuit_boots>, //4
    <item:mekanism:meka_tool>, //5
    <item:ae2:calculation_processor_press>, //6
    <item:ae2:engineering_processor_press>, //7
    <item:ae2:logic_processor_press>, //8
    <item:ae2:silicon_press>, //9
    <item:mekanism:modification_station>, //10
    <item:ae2:charger> //11
];


for arr_ingredient in arr_rmrecipe { // removes recipes in the array so they can be replaced below
    print("[CFCMC_CR] [INFO] Removing Recipe(s) For : " + arr_ingredient.commandString); 
    craftingTable.remove(arr_ingredient);  
}

// digital miner recipe replacements

craftingTable.addShaped("cfc_digitalminer",arr_rmrecipe[0], [
    [<item:evolvedmekanism:alloy_hypercharged>,<item:evolvedmekanism:overclocked_control_circuit>,<item:evolvedmekanism:alloy_hypercharged>],
    [<item:quark:diamond_heart>,<item:mekanism:robit>,<item:quark:diamond_heart>],
    [<item:mekanism:teleportation_core>,<item:evolvedmekanism:overclocked_induction_cell>,<item:mekanism:teleportation_core>]
]);

// modification table made harder will replacement

craftingTable.addShaped("cfc_modificationtable",arr_rmrecipe[10], [
    [<item:mekanism:hdpe_sheet>,<item:mekanism:personal_chest>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:ultimate_control_circuit>,<item:mekanism:steel_casing>,<item:mekanism:ultimate_control_circuit>],
    [<item:mekanism:hdpe_sheet>,<item:mekanism:pellet_polonium>,<item:mekanism:hdpe_sheet>]
]);

//mekasuit & meka-tool recipe replacements

craftingTable.addShaped("cfc_mekasuit_helmet",arr_rmrecipe[1], [
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:dense_tier_installer>,<item:evolvedmekanism:dense_control_circuit>],
    [<item:mekanism:hdpe_sheet>,<item:minecraft:netherite_helmet>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:pellet_polonium>,<item:evolvedmekanism:multiversal_induction_provider>,<item:mekanism:pellet_polonium>]
]);
craftingTable.addShaped("cfc_mekasuit_bodyarmor",arr_rmrecipe[2], [
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:dense_tier_installer>,<item:evolvedmekanism:dense_control_circuit>],
    [<item:mekanism:hdpe_sheet>,<item:minecraft:netherite_chestplate>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:pellet_polonium>,<item:evolvedmekanism:multiversal_induction_provider>,<item:mekanism:pellet_polonium>]
]);
craftingTable.addShaped("cfc_mekasuit_pants",arr_rmrecipe[3], [
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:dense_tier_installer>,<item:evolvedmekanism:dense_control_circuit>],
    [<item:mekanism:hdpe_sheet>,<item:minecraft:netherite_leggings>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:pellet_polonium>,<item:evolvedmekanism:multiversal_induction_provider>,<item:mekanism:pellet_polonium>]
]);
craftingTable.addShaped("cfc_mekasuit_boots",arr_rmrecipe[4], [
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:dense_tier_installer>,<item:evolvedmekanism:dense_control_circuit>],
    [<item:mekanism:hdpe_sheet>,<item:minecraft:netherite_boots>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:pellet_polonium>,<item:evolvedmekanism:multiversal_induction_provider>,<item:mekanism:pellet_polonium>]
]);


craftingTable.addShaped("cfc_meka_tool",arr_rmrecipe[5], [
   [<item:evolvedmekanism:dense_tier_installer>,<item:mekanism:configurator>,<item:evolvedmekanism:dense_tier_installer>],
    [<item:mekanism:hdpe_sheet>,<item:mekanism:atomic_disassembler>,<item:mekanism:hdpe_sheet>],
    [<item:mekanism:pellet_polonium>,<item:evolvedmekanism:multiversal_induction_provider>,<item:mekanism:pellet_polonium>]
]);

print("[CFCMC_CR] [INFO] If you're seeing this it means that the meka series armaments probably loaded correctly <3");
// personal chest and barrel recipe fix

//chest

craftingTable.addShaped("cfc_advanced_pchest",<item:evolvedmekanism:advanced_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:advanced_control_circuit>,<item:mekanism:personal_chest>,<item:mekanism:advanced_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_elite_pchest",<item:evolvedmekanism:elite_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:elite_control_circuit>,<item:evolvedmekanism:advanced_personal_chest>,<item:mekanism:elite_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_ultimate_pchest",<item:evolvedmekanism:ultimate_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:ultimate_control_circuit>,<item:evolvedmekanism:elite_personal_chest>,<item:mekanism:ultimate_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_overclocked_pchest",<item:evolvedmekanism:overclocked_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:overclocked_control_circuit>,<item:evolvedmekanism:ultimate_personal_chest>,<item:evolvedmekanism:overclocked_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_quantum_pchest",<item:evolvedmekanism:quantum_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:quantum_control_circuit>,<item:evolvedmekanism:overclocked_personal_chest>,<item:evolvedmekanism:quantum_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_dense_pchest",<item:evolvedmekanism:dense_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:quantum_personal_chest>,<item:evolvedmekanism:dense_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_multiversal_pchest",<item:evolvedmekanism:multiversal_personal_chest>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:multiversal_control_circuit>,<item:evolvedmekanism:dense_personal_chest>,<item:evolvedmekanism:multiversal_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);

//barrel

craftingTable.addShaped("cfc_advanced_pbarrel",<item:evolvedmekanism:advanced_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:advanced_control_circuit>,<item:mekanism:personal_barrel>,<item:mekanism:advanced_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_elite_pbarrel",<item:evolvedmekanism:elite_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:elite_control_circuit>,<item:evolvedmekanism:advanced_personal_barrel>,<item:mekanism:elite_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_ultimate_pbarrel",<item:evolvedmekanism:ultimate_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:mekanism:ultimate_control_circuit>,<item:evolvedmekanism:elite_personal_barrel>,<item:mekanism:ultimate_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_overclocked_pbarrel",<item:evolvedmekanism:overclocked_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:overclocked_control_circuit>,<item:evolvedmekanism:ultimate_personal_barrel>,<item:evolvedmekanism:overclocked_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_quantum_pbarrel",<item:evolvedmekanism:quantum_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:quantum_control_circuit>,<item:evolvedmekanism:overclocked_personal_barrel>,<item:evolvedmekanism:quantum_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_dense_pbarrel",<item:evolvedmekanism:dense_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:dense_control_circuit>,<item:evolvedmekanism:quantum_personal_barrel>,<item:evolvedmekanism:dense_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);
craftingTable.addShaped("cfc_multiversal_pbarrel",<item:evolvedmekanism:multiversal_personal_barrel>, [
    [<tag:items:forge:ingots/steel>,<tag:items:forge:glass/silica>,<tag:items:forge:ingots/steel>],
    [<item:evolvedmekanism:multiversal_control_circuit>,<item:evolvedmekanism:dense_personal_barrel>,<item:evolvedmekanism:multiversal_control_circuit>],
    [<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>,<tag:items:forge:ingots/steel>]
]);


//ae2 inscriber presses recipe replacements

craftingTable.addShaped("cfc_calculation_processor_press",arr_rmrecipe[6], [
    [<item:ae2:certus_quartz_crystal>,<item:minecraft:iron_block>,<item:minecraft:redstone>],
    [<item:minecraft:air>,<item:minecraft:quartz>,<item:minecraft:air>]
]);
craftingTable.addShaped("cfc_engineering_processor_press",arr_rmrecipe[7], [
    [<item:minecraft:diamond>,<item:minecraft:iron_block>,<item:minecraft:redstone>],
    [<item:minecraft:air>,<item:minecraft:quartz>,<item:minecraft:air>]
]);
craftingTable.addShaped("cfc_logic_processor_press",arr_rmrecipe[8], [
    [<item:minecraft:gold_ingot>,<item:minecraft:iron_block>,<item:minecraft:redstone>],
    [<item:minecraft:air>,<item:minecraft:quartz>,<item:minecraft:air>]
]);
craftingTable.addShaped("cfc_silicon_press",arr_rmrecipe[9], [
    [<tag:items:forge:silicon>,<item:minecraft:iron_block>,<tag:items:forge:silicon>],
    [<item:minecraft:air>,<item:minecraft:quartz>,<item:minecraft:air>]
]);

//balancing the charger and adding a recipe for certus quartz

craftingTable.addShaped("cfc_ae2charger",arr_rmrecipe[11], [
    [<item:minecraft:iron_ingot>,<item:minecraft:copper_ingot>,<item:minecraft:iron_ingot>],
    [<item:minecraft:anvil>,<item:minecraft:quartz>,<item:minecraft:air>],
    [<item:minecraft:iron_ingot>,<item:minecraft:copper_ingot>,<item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("cfc_certus_quartz",<item:ae2:certus_quartz_crystal>, [
    [<item:ae2:certus_quartz_dust>,<item:ae2:certus_quartz_dust>,<item:minecraft:air>],
    [<item:ae2:certus_quartz_dust>,<item:ae2:certus_quartz_dust>,<item:minecraft:air>]
]);
<recipetype:ae2:charger>.addJsonRecipe("cfc_ae2bal_sky_stone", {
  "type": "ae2:charger",
  "ingredient": {
    "item": "minecraft:stone"
  },
  "result": {
    "item": "ae2:sky_stone_block"
  }
});
<recipetype:ae2:charger>.addJsonRecipe("cfc_ae2bal_certus_quartz", {
  "type": "ae2:charger",
  "ingredient": {
    "item": "minecraft:quartz"
  },
  "result": {
    "item": "ae2:certus_quartz_dust"
  }
});

//Mekanism Venus sand broken recipe fix

var mekanismCrusher = <recipetype:mekanism:crushing>;

val venusTag = <tag:items:forge:sandstone/venus_sandstone>;
venusTag.add(<item:ad_astra:venus_sandstone>);



mekanismCrusher.removeByName("mekanism:crushing/venus_sandstone_to_venus_sand");
mekanismCrusher.addJsonRecipe("cfc_mekfix_venus_sandstone", {
    "type": "mekanism:crushing",
    "input": {
        "ingredient": <item:ad_astra:venus_sandstone>,
        "amount": 1
    },
    "output": <item:ad_astra:venus_sand>
});

print("[CFCMC_CR] [PATCH] Fixed venus_sandstone tag");

//Define alloyer recipetype

var evolvedmekAlloyer = <recipetype:mekanism:alloying>;

// Remove broken alloyer recipes.

evolvedmekAlloyer.removeByName("evolvedmekanism:alloying/compat/enderio/nethercotta");
evolvedmekAlloyer.removeByName("evolvedmekanism:alloying/compat/enderio/red_dye");

/*Define a function for evomek serialization
Only types of item definitions we have are "item" and "tag" make sure to define this in the input type after amount for each, this is so we can dynamically reference types in the alloyer. - Cold*/
function defineEvoMekAlloyerRecipe(name as string, output as IIngredientWithAmount, mainInput as IIngredientWithAmount, extraInput as IIngredientWithAmount, secondExtraInput as IIngredientWithAmount) as void {
  <recipetype:mekanism:alloying>.addJsonRecipe("cfc_evomekalloyfix_" + name, {
        "type": "evolvedmekanism:alloying",
        "mainInput": {
            "amount": mainInput.amount,
            "ingredient": mainInput.ingredient
        },
        "extraInput": {
            "amount": extraInput.amount,
            "ingredient": extraInput.ingredient
        },
        "secondExtraInput": {
            "amount": secondExtraInput.amount,
            "ingredient": secondExtraInput.ingredient
        },
        "output": output
    });
    print("[CFCMC_CR] [PATCH] function defineEvoMekAlloyerRecipe called successfully: cfc_evomekalloyfix_" + name);
}

//Adding enderio flour to the forge flour tag because its not there?? - Cold
<tag:items:forge:flour>.add(<item:enderio:flour>);
<tag:items:forge:flour/wheat>.add(<item:enderio:flour>);
print("[CFCMC_CR] [PATCH] Added 'enderio:flour' to its respective flour tags");
/* weird.. this doesn't fix the enderio alloyer recipe yet, it only accepts enderio flour
same with enderio clear glass...*/
<tag:items:forge:glass>.add(<item:enderio:clear_glass>);
<tag:items:forge:glass/colorless>.add(<item:enderio:clear_glass>);
print("[CFCMC_CR] [PATCH] Added 'enderio:clear_glass' to its respective glass tags");
//enderio sucks at forge tags -._-.

defineEvoMekAlloyerRecipe("nethercotta",<item:enderio:nethercotta>,<item:minecraft:nether_brick>, <item:minecraft:nether_wart> * 4, <item:minecraft:clay_ball> * 6);
defineEvoMekAlloyerRecipe("copper_alloy_ingot",<item:enderio:copper_alloy_ingot>,<item:minecraft:copper_ingot> * 1, <tag:items:forge:silicon> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("vibrant_alloy_ingot",<item:enderio:vibrant_alloy_ingot>,<item:enderio:energetic_alloy_ingot>,<item:minecraft:ender_pearl>,<tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("redstone_alloy_ingot",<item:enderio:redstone_alloy_ingot>,<item:minecraft:redstone> * 1, <tag:items:forge:silicon> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("pulsating_alloy_ingot",<item:enderio:pulsating_alloy_ingot>,<item:minecraft:iron_ingot> * 1, <tag:items:forge:silicon> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("cake_base",<item:enderio:cake_base> * 2,<tag:items:forge:flour/wheat> * 3, <item:minecraft:egg> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("red_dye",<item:minecraft:red_dye> * 12,<tag:items:forge:vegetables/beetroot> * 1, <item:minecraft:clay_ball> * 3, <item:minecraft:egg> * 6);
defineEvoMekAlloyerRecipe("dark_fused_quartz",<item:enderio:fused_quartz_d> * 1,<tag:items:forge:storage_blocks/quartz> * 1, <tag:items:forge:gems/amethyst> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_fused_quartz_alt1",<item:enderio:fused_quartz_d> * 1,<tag:items:forge:storage_blocks/quartz> * 1, <tag:items:forge:storage_blocks/amethyst> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_fused_quartz_alt2",<item:enderio:fused_quartz_d> * 1,<tag:items:forge:gems/quartz> * 4, <tag:items:forge:gems/amethyst> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_fused_quartz_alt3",<item:enderio:fused_quartz_d> * 1,<tag:items:forge:gems/quartz> * 4, <tag:items:forge:storage_blocks/amethyst> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_fused_quartz_alt4",<item:enderio:fused_quartz_d> * 1,<item:enderio:fused_quartz> * 1, <tag:items:forge:storage_blocks/amethyst> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_fused_quartz_alt5",<item:enderio:fused_quartz_d> * 1,<item:enderio:fused_quartz> * 1, <tag:items:forge:gems/amethyst> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_clear_glass",<item:enderio:clear_glass_d> * 1,<tag:items:forge:glass/colorless> * 1, <tag:items:forge:gems/amethyst> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_clear_glass_alt",<item:enderio:clear_glass_d> * 1,<tag:items:forge:glass/colorless> * 1, <tag:items:forge:storage_blocks/amethyst> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("dark_steel_ingot",<item:enderio:dark_steel_ingot> * 1,<tag:items:forge:ingots/iron> * 1, <tag:items:forge:dusts/coal> * 1, <tag:items:forge:obsidian> * 1);
defineEvoMekAlloyerRecipe("organic_green_dye",<item:enderio:organic_green_dye> * 2,<item:enderio:plant_matter_green> * 12, <tag:items:forge:slimeballs> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("organic_green_dye_alt",<item:enderio:organic_green_dye> * 1,<item:enderio:plant_matter_green> * 6, <item:minecraft:egg> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("englightened_clear_glass",<item:enderio:clear_glass_e> * 1,<tag:items:forge:glass/colorless> * 1, <tag:items:forge:dusts/glowstone> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("englightened_clear_glass_alt",<item:enderio:clear_glass_e> * 1,<tag:items:forge:glass/colorless> * 1, <item:minecraft:glowstone> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("clayed_glowstone",<item:enderio:clayed_glowstone> * 2,<tag:items:forge:dusts/glowstone> * 1, <item:minecraft:clay_ball> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("organic_brown_dye",<item:enderio:organic_brown_dye> * 1,<item:enderio:plant_matter_brown> * 12, <tag:items:forge:slimeballs> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("organic_brown_dye_alt",<item:enderio:organic_brown_dye> * 1,<item:enderio:plant_matter_brown> * 6, <item:minecraft:egg> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz",<item:enderio:fused_quartz_e> * 1,<tag:items:forge:gems/quartz> * 4, <tag:items:forge:dusts/glowstone> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz_alt1",<item:enderio:fused_quartz_e> * 1,<tag:items:forge:storage_blocks/quartz> * 1, <tag:items:forge:dusts/glowstone> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz_alt2",<item:enderio:fused_quartz_e> * 1,<tag:items:forge:gems/quartz> * 4, <item:minecraft:glowstone> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz_alt3",<item:enderio:fused_quartz_e> * 1,<tag:items:forge:storage_blocks/quartz> * 1, <item:minecraft:glowstone> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz_alt4",<item:enderio:fused_quartz_e> * 1,<item:enderio:fused_quartz> * 1, <tag:items:forge:dusts/glowstone> * 4, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("enlightened_fused_quartz_alt5",<item:enderio:fused_quartz_e> * 1,<item:enderio:fused_quartz> * 1, <item:minecraft:glowstone> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("end_steel_ingot",<item:enderio:end_steel_ingot> * 1,<item:minecraft:end_stone> * 1, <item:enderio:dark_steel_ingot> * 1, <tag:items:forge:obsidian> * 1);
defineEvoMekAlloyerRecipe("organic_black_dye",<item:enderio:organic_black_dye> * 1,<tag:items:forge:dusts/coal> * 2, <tag:items:forge:slimeballs> * 1, <tag:items:cfcmc:empty> * 1);
defineEvoMekAlloyerRecipe("industrial_insulation",<item:enderio:industrial_insulation_block> * 1,<tag:items:forge:dusts/lapis> * 4, <tag:items:forge:wool> * 4, <tag:items:enderio:insulation_metals> * 1);
defineEvoMekAlloyerRecipe("alloyed_cookie",<item:minecraft:cookie> * 8,<tag:items:forge:flour/wheat> * 1, <item:minecraft:cocoa_beans> * 1, <tag:items:cfcmc:empty> * 1);






// this is all tacz shit below this line

<tag:items:cfcmc_tacz:spring_component>.add(<item:createbigcannons:recoil_spring>); //adds a tag for recoil springs
<tag:items:cfcmc_tacz:precision_component>.add(<item:create:precision_mechanism>); // precis mechanisms
<tag:items:cfcmc_tacz:rubber_component>.add(<item:thermal:cured_rubber>); // cured rubber from thermal
<tag:items:cfcmc_tacz:explosive_component>.add(<item:minecraft:tnt>); // cured rubber from thermal