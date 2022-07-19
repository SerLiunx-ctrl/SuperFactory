import mods.enderio.AlloySmelter;

//物品隐藏

//enderio磁钢
mods.jei.JEI.removeAndHide(<enderio:item_alloy_ingot>);

//简易斯特拉发电机
recipes.remove(<enderio:block_simple_stirling_generator>);
recipes.addShaped(<enderio:block_simple_stirling_generator>, [
	[<ore:stoneBricks>, <ore:craftingFurnace>, <ore:stoneBricks>], 
	[<ore:stoneBricks>, <gregtech:steam_casing>, <ore:stoneBricks>], 
	[<ore:gearIron>, <ore:craftingPiston>, <ore:gearIron>]
]);

//简易电炉
recipes.remove(<enderio:block_simple_furnace>);
recipes.addShaped(<enderio:block_simple_furnace>, [
	[<ore:ingotSteel>, <ore:craftingFurnace>, <ore:ingotSteel>], 
	[<ore:stoneBricks>, <gregtech:steam_casing>, <ore:stoneBricks>], 
	[<ore:gearIron>, <minecraft:bucket>, <ore:gearIron>]
]);

//简易磨粉机
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill>, [
	[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
	[<ore:stoneBricks>, <gregtech:steam_casing>, <ore:stoneBricks>], 
	[<ore:gearIron>, <ore:craftingPiston>, <ore:gearIron>]
]);

//简易有线充电器
recipes.remove(<enderio:block_simple_wired_charger>);
recipes.addShaped(<enderio:block_simple_wired_charger>, [
	[<ore:stoneBricks>, <ore:ingotElectricalSteel>, <ore:stoneBricks>], 
	[<ore:ingotElectricalSteel>, <gregtech:steam_casing:2>, <ore:ingotElectricalSteel>], 
	[<ore:stoneBricks>, <ore:ingotElectricalSteel>, <ore:stoneBricks>]
]);

//简易合成器
recipes.remove(<enderio:block_simple_crafter>);
recipes.addShaped(<enderio:block_simple_crafter>, [
	[<ore:gearIron>, <ore:gearIron>, <ore:gearIron>], 
	[<ore:ingotIron>, <gregtech:steam_casing>, <ore:ingotIron>], 
	[<ore:gearStone>, <ore:workbench>, <ore:gearStone>]
]);

//简易合金炉
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.addShaped(<enderio:block_simple_alloy_smelter>, [
	[<gregtech:meta_item_1:603>, <ore:circuitHv>, <gregtech:meta_item_1:603>], 
	[<gregtech:machine:50>, <gregtech:machine:987>, <gregtech:machine:50>], 
	[<ore:gearSteel>, <ore:pipeNormalFluidSteel>, <ore:gearSteel>]
]);

//合金炉
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped(<enderio:block_alloy_smelter>, [
	[<gregtech:meta_item_1:604>, <ore:circuitEv>, <gregtech:meta_item_1:604>], 
	[<ore:wireGtQuadrupleCupronickel>, <gregtech:machine:987>, <ore:wireGtQuadrupleCupronickel>], 
	[<ore:gearAluminium>, <ore:wireGtQuadrupleCupronickel>, <ore:gearAluminium>]
]);

//磨粉机
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [
	[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
	[<ore:stoneBricks>, <gregtech:machine:986>, <ore:stoneBricks>], 
	[<ore:gearSteel>, <ore:craftingPiston>, <ore:gearSteel>]
]);

//斯特林发电机
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped(<enderio:block_stirling_generator>, [
	[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
	[<gregtech:meta_item_1:172>, <gregtech:steam_casing:2>, <gregtech:meta_item_1:172>], 
	[<ore:gearSteel>, <ore:craftingPiston>, <ore:gearSteel>]
]);

//燃烧发电机
recipes.remove(<enderio:block_combustion_generator>);
recipes.addShaped(<enderio:block_combustion_generator>, [
	[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
	[<gregtech:meta_item_1:172>, <gregtech:boiler_firebox_casing>, <gregtech:meta_item_1:172>], 
	[<ore:gearSteel>, <ore:craftingPiston>, <ore:gearSteel>]
]);

//无线充能器
recipes.remove(<enderio:block_wireless_charger>);
recipes.addShaped(<enderio:block_wireless_charger>, [
	[<ore:ingotEnergeticAlloy>, <gregtech:meta_item_1:202>, <ore:ingotEnergeticAlloy>], 
	[<ore:componentCapacitor>, <gregtech:machine:986>, <ore:componentCapacitor>], 
	[<ore:ingotEnergeticAlloy>, <gregtech:meta_item_1:202>, <ore:ingotEnergeticAlloy>]
]);

//喷涂机
recipes.remove(<enderio:block_painter>);
recipes.addShaped(<enderio:block_painter>, [
	[<ore:ingotElectricalSteel>, <ore:rotorIron>, <ore:ingotElectricalSteel>], 
	[<gregtech:meta_item_1:61>, <gregtech:machine:986>, <gregtech:meta_item_1:61>], 
	[<ore:ingotElectricalSteel>, <gregtech:meta_item_1:127>, <ore:ingotElectricalSteel>]
]);

//有线充能器
recipes.remove(<enderio:block_wired_charger>);
recipes.addShaped(<enderio:block_wired_charger>, [
	[<ore:ingotElectricalSteel>, <ore:itemPulsatingCrystal>, <ore:ingotElectricalSteel>], 
	[<enderio:item_basic_capacitor>, <gregtech:machine:987>, <enderio:item_basic_capacitor>], 
	[<ore:cableGtSingleCopper>, <gregtech:meta_item_1:717>, <ore:cableGtSingleCopper>]
]);

//种植站
recipes.remove(<enderio:block_farm_station>);
recipes.addShaped(<enderio:block_farm_station>, [
	[<ore:itemVibrantCrystal>, <ore:toolHeadAxeSteel>, <ore:itemVibrantCrystal>], 
	[<enderio:item_basic_capacitor>, <gregtech:machine:987>, <enderio:item_basic_capacitor>], 
	[<ore:circuitLv>, <ore:toolHeadHoeSteel>, <ore:circuitLv>]
]);

//灵魂绑定器
recipes.remove(<enderio:block_soul_binder>);
recipes.addShaped(<enderio:block_soul_binder>, [
	[<ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>], 
	[<ore:itemSkull>, <gregtech:machine:987>, <ore:itemSkull>], 
	[<ore:cableGtSingleTin>, <ore:circuitLv>, <ore:cableGtSingleTin>]
]);

//头颅装配机
recipes.remove(<enderio:block_slice_and_splice>);
recipes.addShaped(<enderio:block_slice_and_splice>, [
	[<ore:ingotSoularium>, <ore:itemSkull>, <ore:ingotSoularium>], 
	[<gregtech:meta_item_1:187>, <gregtech:machine:987>, <gregtech:meta_item_1:187>], 
	[<ore:gearAluminium>, <ore:circuitLv>, <ore:gearAluminium>]
]);

//强化合金炉
recipes.remove(<enderio:block_enhanced_alloy_smelter>);
recipes.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:gearVibrant>, <ore:wireGtQuadrupleKanthal>, <ore:gearVibrant>], 
	[<ore:wireGtQuadrupleKanthal>, <enderio:block_alloy_smelter>, <ore:wireGtQuadrupleKanthal>], 
	[<ore:gearVibrant>, <ore:wireGtQuadrupleKanthal>, <ore:gearVibrant>]
]);

//强化燃烧发电机
recipes.remove(<enderio:block_enhanced_combustion_generator>);
recipes.addShaped(<enderio:block_enhanced_combustion_generator>, [
	[<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
	[<gregtech:meta_item_1:173>, <gregtech:boiler_firebox_casing:1>, <gregtech:meta_item_1:173>], 
	[<ore:gearAluminium>, <ore:craftingPiston>, <ore:gearAluminium>]
]);

//强化磨粉机
recipes.remove(<enderio:block_enhanced_sag_mill>);
recipes.addShaped(<enderio:block_enhanced_sag_mill>, [
	[<ore:itemFlint>, <gregtech:meta_item_1:266>, <ore:itemFlint>], 
	[<ore:stoneBricks>, <gregtech:machine:987>, <ore:stoneBricks>], 
	[<ore:gearAluminium>, <ore:cableGtSingleCopper>, <ore:gearAluminium>]
]);

//强化有线充能器
recipes.remove(<enderio:block_enhanced_wired_charger>);
recipes.addShaped(0, <enderio:block_enhanced_wired_charger>, [
	[<ore:ingotDarkSteel>, <ore:itemPulsatingCrystal>, <ore:ingotDarkSteel>], 
	[<enderio:item_basic_capacitor:2>, <gregtech:machine:988>, <enderio:item_basic_capacitor:2>], 
	[<ore:cableGtSingleGold>, <gregtech:meta_item_1:718>, <ore:cableGtSingleGold>]
]);