// Made by Cold_Comfort 22.07.25

// NOTE! both methods, replace attribute and modify attribute DO NOT WORK, this needs to be converted into a replacement armor script.


let debugFalseLoad = false

ItemEvents.modification(cfcmc_event => {

    
    console.log('cfc_customattributes called in server')
    function replaceAttribute(itemid, armorP, armorT, armorK, attkD, attkS, isArmor){
        if (debugFalseLoad == true){
            console.log('False load triggered')
            return null
        }
        console.log('Loading ' + itemid + ' with custom attributes')
        cfcmc_event.modify(itemid, item=> {
            try{
            if(isArmor == true){
                item.armorProtection = armorP
                item.armorToughness = armorT
                item.armorKnockbackResistance = armorK
            } else {
                item.attackDamage = attkD
                item.attackSpeed = attkS
            }
            } catch(error) {
                console.log('Unexpected exception encountered in cfc_customattributes.js while loading "' + itemid + '" : ' + error)
                
            }
        })

    }
    function modifyAttribute(itemid, armorP, armorT, armorK, attkD, attkS, isArmor){
        if (debugFalseLoad == true){
            console.log('False load triggered')
            return null
        }
        console.log('Loading ' + itemid + ' with modified attributes')
        cfcmc_event.modify(itemid, item=> {
                    try{
                        if(isArmor == true){
                            item.addAttributeModifier("generic.armor", armorP,"addition")
                            item.addAttributeModifier("generic.armor_toughness", armorT,"addition")
                            item.addAttributeModifier("generic.knockback_resistance", armorK,"addition")
                        } else {
                            item.addAttributeModifier("generic.attack_damage", attkD,"addition")
                            item.addAttributeModifier("generic.attack_speed", attkS,"addition")
                        }
                    }catch(error){
                        console.log('Unexpected exception encountered in cfc_customattributes.js while loading "' + itemid + '" : ' + error)
                    }
                })
    }

    //Osmium attributefix
    
    replaceAttribute('mekanismtools:osmium_helmet', 0,-1,-0.1,0,0, true)
    replaceAttribute('mekanismtools:osmium_chestplate', 0,-1,-0.1,0,0, true)
    replaceAttribute('mekanismtools:osmium_leggings', 0,-1,-0.1,0,0, true)
    replaceAttribute('mekanismtools:osmium_boots', -1,-1,-0.1,0,0, true)

    replaceAttribute('mekanismtools:osmium_pickaxe', 0,0,0,-1,0, false)
    replaceAttribute('mekanismtools:osmium_axe', 0,0,0,-4,0.5, false)
    replaceAttribute('mekanismtools:osmium_shovel', 0,0,0,-1,0, false)
    replaceAttribute('mekanismtools:osmium_hoe', 0,0,0,0,-1, false)
    replaceAttribute('mekanismtools:osmium_paxel', 0,0,0,-4,0, false)
    replaceAttribute('mekanismtools:osmium_sword', 0,0,0,-1,0, false)
    
    //Netherite attributefix

    replaceAttribute('minecraft:netherite_helmet', 3,2,0.1,0,0, true)
    replaceAttribute('minecraft:netherite_chestplate', 4,2,0.1,0,0, true)
    replaceAttribute('minecraft:netherite_leggings', 2,2,0.1,0,0, true)
    replaceAttribute('minecraft:netherite_boots', 2,2,0.1,0,0, true)

    replaceAttribute('minecraft:netherite_pickaxe', 0,0,0,4,0, false)
    replaceAttribute('minecraft:netherite_axe', 0,0,0,6,0.1, false)
    replaceAttribute('minecraft:netherite_shovel', 0,0,0,4,0, false)
    replaceAttribute('minecraft:netherite_hoe', 0,0,0,0,5, false)
    replaceAttribute('mekanismtools:netherite_paxel', 0,0,0,6,0, false)
    replaceAttribute('minecraft:netherite_sword', 0,0,0,4,0, false)

    //Refined Obsidian attributefix

    replaceAttribute('mekanismtools:refined_obsidian_helmet', -3,-2,-0.1,0,0, true)
    replaceAttribute('mekanismtools:refined_obsidian_chestplate', -4,-2,-0.1,0,0, true)
    replaceAttribute('mekanismtools:refined_obsidian_leggings', -2,-2,-0.1,0,0, true)
    replaceAttribute('mekanismtools:refined_obsidian_boots', -2,-2,-0.1,0,0, true)

    replaceAttribute('mekanismtools:refined_obsidian_pickaxe', 0,0,0,-4,0, false)
    replaceAttribute('mekanismtools:refined_obsidian_axe', 0,0,0,-6,-0.1, false)
    replaceAttribute('mekanismtools:refined_obsidian_shovel', 0,0,0,-4,0, false)
    replaceAttribute('mekanismtools:refined_obsidian_hoe', 0,0,0,0,-5, false)
    replaceAttribute('mekanismtools:refined_obsidian_paxel', 0,0,0,-6,0, false)
    replaceAttribute('mekanismtools:refined_obsidian_sword', 0,0,0,-4,0, false)

})