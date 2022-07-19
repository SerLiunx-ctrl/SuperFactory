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