import mods.gregtech.recipe.RecipeMap;


//格雷机器导入
val extractor as RecipeMap = <recipemap:extractor>;
val mixer as RecipeMap = <recipemap:mixer>;
val electric_blast_furnace as RecipeMap = <recipemap:electric_blast_furnace>;
val chemical_reactor as RecipeMap = <recipemap:chemical_reactor>;

//隐藏感应炉, 红石炉，精炼机
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:3>);
mods.jei.JEI.removeAndHide(<thermalexpansion:machine>);

//tooltip
<thermalexpansion:machine:3>.addTooltip(format.red("已禁用! 请使用匠魂装备来代替"));
<thermalexpansion:machine>.addTooltip(format.red("已禁用! 请使用匠魂装备来代替"));

//替换机器框架
recipes.replaceAllOccurences(<thermalexpansion:frame>, <gregtech:machine:986>);

//创造储罐
mods.extendedcrafting.TableCrafting.addShaped(4, <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [
	[<ore:ingotInfinity>, <ore:plateSpaceTime>, <ore:plateSpaceTime>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:plateSpaceTime>, <ore:plateSpaceTime>, <ore:ingotInfinity>], 
	[<ore:plateSpaceTime>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:149>, <extracells:certustank>, <draconicevolution:reactor_core>, <enderio:block_tank:1>, <gregtech:meta_item_1:149>, <gregtech:meta_item_1:209>, <ore:plateSpaceTime>], 
	[<ore:plateSpaceTime>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <draconicevolution:dragon_heart>, <ore:plateDraconium>, <ore:plateDraconium>, <ore:plateDraconium>, <draconicevolution:dragon_heart>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:plateSpaceTime>], 
	[<ore:ingotInfinity>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:plateDraconium>, <ore:circuitUhv>, <extracells:storage.component:10>, <ore:circuitUhv>, <ore:plateDraconium>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <draconicevolution:reactor_core>, <ore:plateDraconium>, <extracells:storage.component:10>, <gregtech:machine:1589>, <extracells:storage.component:10>, <ore:plateDraconium>, <draconicevolution:reactor_core>, <ore:ingotInfinity>], 
	[<ore:ingotInfinity>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:plateDraconium>, <ore:circuitUhv>, <extracells:storage.component:10>, <ore:circuitUhv>, <ore:plateDraconium>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:ingotInfinity>], 
	[<ore:plateSpaceTime>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <draconicevolution:dragon_heart>, <ore:plateDraconium>, <ore:plateDraconium>, <ore:plateDraconium>, <draconicevolution:dragon_heart>, <ore:wireGtHexEnrichedNaquadahTriniumEuropiumDuranide>, <ore:plateSpaceTime>], 
	[<ore:plateSpaceTime>, <gregtech:meta_item_1:209>, <gregtech:meta_item_1:149>, <enderio:block_tank:1>, <draconicevolution:reactor_core>, <extracells:certustank>, <gregtech:meta_item_1:149>, <gregtech:meta_item_1:209>, <ore:plateSpaceTime>], 
	[<ore:ingotInfinity>, <ore:plateSpaceTime>, <ore:plateSpaceTime>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>, <ore:plateSpaceTime>, <ore:plateSpaceTime>, <ore:ingotInfinity>]
]);

//创造储罐清空
recipes.addShapeless(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}) * 2, [<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte})]);

//熔融末影珍珠
extractor.recipeBuilder()
	.inputs(<minecraft:ender_pearl>)
	.duration(20)
	.EUt(30)
	.fluidOutputs(<liquid:ender> * 250)
	.buildAndRegister();

//末影粉
recipes.remove(<thermalfoundation:material:103>);
mixer.recipeBuilder()
	.inputs(<ore:dustLead> * 3, <ore:dustPlatinum> * 1)
	.duration(40)
	.EUt(48)
	.circuit(2)
	.fluidInputs(<liquid:ender> * 1000)
	.outputs(<thermalfoundation:material:103> * 8)
	.buildAndRegister();

//信素粉
recipes.remove(<thermalfoundation:material:101>);
mixer.recipeBuilder()
	.inputs(<ore:dustCopper> * 3, <ore:dustSilver>* 1)
	.duration(40)
	.EUt(48)
	.circuit(2)
	.fluidInputs(<liquid:redstone> * 1000)
	.outputs(<thermalfoundation:material:101> * 8)
	.buildAndRegister();

//流明粉
recipes.remove(<thermalfoundation:material:102>);
mixer.recipeBuilder()
	.inputs(<ore:dustTin> * 3, <ore:dustSilver> * 1)
	.duration(40)
	.EUt(48)
	.circuit(2)
	.fluidInputs(<liquid:glowstone> * 1000)
	.outputs(<thermalfoundation:material:102> * 8)
	.buildAndRegister();

//末影锭
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:359>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:295>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:103>);
electric_blast_furnace.recipeBuilder()
	.inputs(<thermalfoundation:material:103>)
	.circuit(1)
	.duration(80)
	.EUt(120)
	.property("temperature", 1700)
	.outputs(<thermalfoundation:material:167>)
	.buildAndRegister();

//信素锭
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:357>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:101>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:293>);
electric_blast_furnace.recipeBuilder()
	.inputs(<thermalfoundation:material:101>)
	.circuit(1)
	.duration(80)
	.EUt(120)
	.property("temperature", 1700)
	.outputs(<thermalfoundation:material:165>)
	.buildAndRegister();

//流明锭
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:294>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:102>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <thermalfoundation:material:358>);
electric_blast_furnace.recipeBuilder()
	.inputs(<thermalfoundation:material:102>)
	.circuit(1)
	.duration(80)
	.EUt(120)
	.property("temperature", 1700)
	.outputs(<thermalfoundation:material:166>)
	.buildAndRegister();

//光合堆肥
mixer.recipeBuilder()
	.inputs(<ore:dustSaltpeter>, <ore:dustCharcoal>, <thermalfoundation:material:864>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:fertilizer> * 32)
	.buildAndRegister();

//富集光合堆肥
mixer.recipeBuilder()
	.inputs(<ore:dustSaltpeter>, <ore:dustCharcoal>, <thermalfoundation:material:865>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:fertilizer:1> * 32)
	.buildAndRegister();

//充能光合堆肥
chemical_reactor.recipeBuilder()
	.inputs(<thermalfoundation:fertilizer:1>, <ore:dustRedstone>)
	.duration(40)
	.EUt(60)
	.outputs(<thermalfoundation:fertilizer:2> * 2)
	.buildAndRegister();

//炽焱粉
mixer.recipeBuilder()
	.inputs(<ore:dustBlaze> * 2, <ore:dustRedstone>, <ore:dustSulfur>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:material:1024> * 6)
	.buildAndRegister();

//凛冰粉
mixer.recipeBuilder()
	.inputs(<ore:dustBlizz> * 2, <ore:dustRedstone>, <minecraft:snowball>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:material:1025> * 6)
	.buildAndRegister();

//地岩粉
mixer.recipeBuilder()
	.inputs(<ore:dustBasalz> * 2, <ore:dustRedstone>, <ore:dustObsidian>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:material:1027> * 6)
	.buildAndRegister();

//空气粉
mixer.recipeBuilder()
	.inputs(<ore:dustBlitz> * 2, <ore:dustRedstone>, <ore:dustSaltpeter>)
	.circuit(4)
	.duration(20)
	.EUt(30)
	.outputs(<thermalfoundation:material:1026> * 6)
	.buildAndRegister();

//炉渣
chemical_reactor.recipeBuilder()
	.inputs(<ore:sand>, <ore:ingotIron>)
	.duration(45)
	.EUt(30)
	.outputs(<thermalfoundation:material:864> * 16)
	.buildAndRegister();

//富集炉渣
chemical_reactor.recipeBuilder()
	.inputs(<ore:sand>, <ore:ingotAluminium>)
	.duration(45)
	.EUt(60)
	.outputs(<thermalfoundation:material:865> * 16)
	.buildAndRegister();


