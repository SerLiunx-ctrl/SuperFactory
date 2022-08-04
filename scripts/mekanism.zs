//替换基础控制电路
recipes.replaceAllOccurences(<mekanism:controlcircuit>, <ore:circuitLv>);

//替换高级控制电路
recipes.replaceAllOccurences(<mekanism:controlcircuit:1>, <ore:circuitMv>);

//替换精英控制电路
recipes.replaceAllOccurences(<mekanism:controlcircuit:2>, <ore:circuitHv>);

//替换终极控制电路
recipes.replaceAllOccurences(<mekanism:controlcircuit:3>, <ore:circuitEv>);

//替换能量板
recipes.replaceAllOccurences(<mekanism:energytablet>, <ore:batteryLv>);

//替换钢制机壳
recipes.replaceAllOccurences(<mekanism:basicblock:8>, <gregtech:machine_casing:1>);

//添加Tooltips
<mekanism:controlcircuit>.addTooltip(format.red("已禁用"));
<mekanism:controlcircuit:1>.addTooltip(format.red("已禁用"));
<mekanism:controlcircuit:2>.addTooltip(format.red("已禁用"));
<mekanism:controlcircuit:3>.addTooltip(format.red("已禁用"));
<mekanism:basicblock:8>.addTooltip(format.red("已禁用"));

//JEI隐藏
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:1>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:2>);
mods.jei.JEI.removeAndHide(<mekanism:controlcircuit:3>);
mods.jei.JEI.removeAndHide(<mekanism:basicblock:8>);
mods.jei.JEI.removeAndHide(<mekanism:ingot:1>);

//删除合成表
recipes.remove(<mekanism:controlcircuit>);
recipes.remove(<mekanism:controlcircuit:1>);
recipes.remove(<mekanism:controlcircuit:2>);
recipes.remove(<mekanism:controlcircuit:3>);
recipes.remove(<mekanism:basicblock:8>);

//冶金灌注机
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [
	[<ore:ingotSteel>, <ore:craftingFurnace>, <ore:ingotSteel>], 
	[<thermalfoundation:material:514>, <ore:ingotBronze>, <thermalfoundation:material:514>], 
	[<ore:ingotSteel>, <ore:craftingFurnace>, <ore:ingotSteel>]
]);

//电动泵
recipes.remove(<mekanism:machineblock:12>);
recipes.addShaped(<mekanism:machineblock:12>, [
	[null, <minecraft:bucket>, null], 
	[<ore:alloyAdvanced>, <gregtech:machine_casing:1>, <ore:alloyAdvanced>], 
	[<ore:pipeTinyFluidCopper>, <gregtech:meta_item_1:142>, <ore:pipeTinyFluidCopper>]
]);

//滴量器
recipes.remove(<mekanism:gaugedropper>.withTag({}));
recipes.addShaped(<mekanism:gaugedropper>.withTag({}), [
	[null, <ore:ingotSteel>, null], 
	[<ore:paneGlassColorless>, <gregtech:meta_item_1:78>, <ore:paneGlassColorless>], 
	[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]
]);

//基础气体储罐
recipes.remove(<mekanism:gastank>.withTag({tier: 0}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}), [
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>], 
	[<ore:ingotSteel>, <gregtech:meta_item_1:80>, <ore:ingotSteel>], 
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>]
]);

//高级气体储罐
recipes.remove(<mekanism:gastank>.withTag({tier: 1}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 1}), [
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>], 
	[<ore:ingotSteel>, <mekanism:gastank>.withTag({tier: 0}), <ore:ingotSteel>], 
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>]
]);

//精英气体储罐
recipes.remove(<mekanism:gastank>.withTag({tier: 2}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 2}), [
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>], 
	[<ore:ingotSteel>, <mekanism:gastank>.withTag({tier: 1}), <ore:ingotSteel>], 
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>]
]);

//终极气体储罐
recipes.remove(<mekanism:gastank>.withTag({tier: 3}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 3}), [
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>], 
	[<ore:ingotSteel>, <mekanism:gastank>.withTag({tier: 2}), <ore:ingotSteel>], 
	[<ore:dustRedstone>, <ore:ingotSteel>, <ore:dustRedstone>]
]);

//高级能量立方
recipes.remove(<mekanism:energycube>.withTag({tier: 1}));
recipes.addShaped(<mekanism:energycube>.withTag({tier: 1}), [
	[<ore:alloyAdvanced>, <ore:batteryLv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:energycube>.withTag({tier: 0}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:batteryLv>, <ore:alloyAdvanced>]
]);

//太阳能板
recipes.remove(<mekanismgenerators:solarpanel>);
recipes.addShaped(<mekanismgenerators:solarpanel>, [
	[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>], 
	[<ore:dustRedstone>, <ore:alloyAdvanced>, <ore:dustRedstone>], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

//燃气发电机
recipes.remove(<mekanismgenerators:generator:3>);
recipes.addShaped(<mekanismgenerators:generator:3>, [
	[<ore:ingotSteel>, <ore:alloyAdvanced>, <ore:ingotSteel>], 
	[<gregtech:machine_casing:1>, <mekanism:electrolyticcore>, <gregtech:machine_casing:1>], 
	[<ore:ingotSteel>, <ore:alloyAdvanced>, <ore:ingotSteel>]
]);

//涡轮机壳
recipes.remove(<mekanismgenerators:generator:10>);
recipes.addShaped(<mekanismgenerators:generator:10>, [
	[null, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:ingotBronze>, <ore:ingotSteel>], 
	[null, <ore:ingotSteel>, null]
]);

//热力发电机
recipes.remove(<mekanismgenerators:generator>);
recipes.addShaped(<mekanismgenerators:generator>, [
	[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], 
	[<ore:blockIron>, <ore:ingotSteel>, <ore:blockIron>], 
	[<ore:plateCopper>, <ore:craftingFurnace>, <ore:plateCopper>]
]);

//步话机
recipes.remove(<mekanism:walkietalkie>.withTag({mekData: {channel: 1}}));

//高级工厂安装器材
recipes.remove(<mekanism:tierinstaller:1>);
recipes.addShaped(<mekanism:tierinstaller:1>, [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <ore:plankWood>, <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//净化仓
recipes.remove(<mekanism:machineblock:9>);
recipes.addShaped(<mekanism:machineblock:9>, [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock>, <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级锯割工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 8}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 8}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 8, mekData: {}}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级灌注工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 7}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 7}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 7}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级压射工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 6}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 6}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 6}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级提纯工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 5}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 5}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 5}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级融合工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 4}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 4}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 4}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级压缩工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 3}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 3}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 3}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级粉碎工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 2}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 2}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 2}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级富集工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 1}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 1}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 1}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//高级熔炼工厂
recipes.remove(<mekanism:machineblock:6>.withTag({recipeType: 0}));
recipes.addShaped(<mekanism:machineblock:6>.withTag({recipeType: 0}), [
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>], 
	[<ore:ingotSteel>, <mekanism:machineblock:5>.withTag({recipeType: 0}), <ore:ingotSteel>], 
	[<ore:alloyAdvanced>, <ore:circuitMv>, <ore:alloyAdvanced>]
]);

//风力发电机
recipes.remove(<mekanismgenerators:generator:6>);
recipes.addShaped(<mekanismgenerators:generator:6>, [
	[null, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:alloyAdvanced>, <ore:ingotSteel>], 
	[<ore:batteryLv>, <ore:circuitLv>, <ore:batteryLv>]
]);

//电解核心
recipes.remove(<mekanism:electrolyticcore>);
recipes.addShaped(<mekanism:electrolyticcore>, [
	[<ore:alloyAdvanced>, <ore:dustAluminium>, <ore:alloyAdvanced>], 
	[<ore:dustIron>, <ore:alloyAdvanced>, <ore:dustGold>], 
	[<ore:alloyAdvanced>, <ore:dustAluminium>, <ore:alloyAdvanced>]
]);

//太阳能发电机
recipes.remove(<mekanismgenerators:generator:1>);
recipes.addShaped(<mekanismgenerators:generator:1>, [
	[<mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>], 
	[<ore:alloyAdvanced>, <ore:ingotIron>, <ore:alloyAdvanced>], 
	[<ore:dustAluminium>, <ore:batteryLv>, <ore:dustAluminium>]
]);

//速度升级
recipes.remove(<mekanism:speedupgrade>);
recipes.addShaped(<mekanism:speedupgrade>, [
	[null, <ore:blockGlassColorless>, null], 
	[<ore:alloyAdvanced>, <ore:dustAluminium>, <ore:alloyAdvanced>], 
	[null, <ore:blockGlassColorless>, null]
]);
