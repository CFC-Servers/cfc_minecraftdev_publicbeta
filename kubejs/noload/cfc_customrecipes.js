// Made by Cold_Comfort 22.07.25


ServerEvents.recipes(cfcmc_event => {
 
  console.log('cfc_customrecipes called in server')


// Replaces the digital miner recipe with the harder one
cfcmc_event.remove({output: 'mekanism:digital_miner'})
cfcmc_event.shaped(
    Item.of('mekanism:digital_miner', 1),
    [
        'ABA',
        'CDC',
        'EFE'
    ],
    {
    A: 'evolvedmekanism:alloy_hypercharged',
    B: 'evolvedmekanism:overclocked_control_circuit',
    C: 'quark:diamond_heart',
    D: 'mekanism:robit',
    E: 'mekanism:teleportation_core',
    F: 'evolvedmekanism:overclocked_induction_cell'
    }
)

// Replaces the mekasuit armorset with the harder recipe
cfcmc_event.remove({output: 'mekanism:mekasuit_helmet'})
cfcmc_event.remove({output: 'mekanism:mekasuit_bodyarmor'})
cfcmc_event.remove({output: 'mekanism:mekasuit_pants'})
cfcmc_event.remove({output: 'mekanism:mekasuit_boots'})
cfcmc_event.shaped(
  Item.of('mekanism:mekasuit_helmet', 1),
  [
    'ABA',
    'CDC',
    'EFE'
  ],
  {
  A: 'evolvedmekanism:dense_control_circuit',
  B: 'evolvedmekanism:dense_tier_installer',
  C: 'mekanism:hdpe_sheet',
  D: 'minecraft:netherite_helmet',
  E: 'mekanism:pellet_polonium',
  F: 'evolvedmekanism:dense_induction_cell'
  }
)
cfcmc_event.shaped(
  Item.of('mekanism:mekasuit_bodyarmor', 1),
  [
    'ABA',
    'CDC',
    'EFE'
  ],
  {
  A: 'evolvedmekanism:dense_control_circuit',
  B: 'evolvedmekanism:dense_tier_installer',
  C: 'mekanism:hdpe_sheet',
  D: 'minecraft:netherite_chestplate',
  E: 'mekanism:pellet_polonium',
  F: 'evolvedmekanism:dense_induction_cell'
  }
)
cfcmc_event.shaped(
  Item.of('mekanism:mekasuit_pants', 1),
  [
    'ABA',
    'CDC',
    'EFE'
  ],
  {
  A: 'evolvedmekanism:dense_control_circuit',
  B: 'evolvedmekanism:dense_tier_installer',
  C: 'mekanism:hdpe_sheet',
  D: 'minecraft:netherite_leggings',
  E: 'mekanism:pellet_polonium',
  F: 'evolvedmekanism:dense_induction_cell'
  }
)
cfcmc_event.shaped(
  Item.of('mekanism:mekasuit_boots', 1),
  [
    'ABA',
    'CDC',
    'EFE'
  ],
  {
  A: 'evolvedmekanism:dense_control_circuit',
  B: 'evolvedmekanism:dense_tier_installer',
  C: 'mekanism:hdpe_sheet',
  D: 'minecraft:netherite_boots',
  E: 'mekanism:pellet_polonium',
  F: 'evolvedmekanism:dense_induction_cell'
  }
)
// Replaces the Meka-tool recipe with the harder variant
// I pulled a stupid and put the wrong fucking itemid
cfcmc_event.remove({output: 'mekanism:meka_tool'})
cfcmc_event.shaped(
  Item.of('mekanism:meka_tool', 1),
  [
    'ABA',
    'CDC',
    'EFE'
  ],
  {
  A: 'evolvedmekanism:dense_tier_installer',
  B: 'mekanism:configurator',
  C: 'mekanism:hdpe_sheet',
  D: 'mekanism:atomic_disassembler',
  E: 'mekanism:pellet_polonium',
  F: 'evolvedmekanism:dense_induction_cell'
  }
)
// AE2 Press crafting recipes
cfcmc_event.shaped(
  Item.of('ae2:calculation_processor_press', 1),
  [
    '   ',
    'ABC',
    ' D '
  ],
  {
  A: 'ae2:certus_quartz_crystal',
  B: 'minecraft:iron_block',
  C: 'minecraft:redstone',
  D: 'minecraft:quartz'
  }
)
cfcmc_event.shaped(
  Item.of('ae2:engineering_processor_press', 1),
  [
    '   ',
    'ABC',
    ' D '
  ],
  {
  A: 'minecraft:diamond',
  B: 'minecraft:iron_block',
  C: 'minecraft:redstone',
  D: 'minecraft:quartz'
  }
)
cfcmc_event.shaped(
  Item.of('ae2:logic_processor_press', 1),
  [
    '   ',
    'ABC',
    ' D '
  ],
  {
  A: 'minecraft:gold_ingot',
  B: 'minecraft:iron_block',
  C: 'minecraft:redstone',
  D: 'minecraft:quartz'
  }
)
cfcmc_event.shaped(
  Item.of('ae2:silicon_press', 1),
  [
    '   ',
    'ABA',
    ' C '
  ],
  {
  A: 'ae2:silicon',
  B: 'minecraft:iron_block',
  C: 'minecraft:quartz'
  }
)

})
