import mods.gregtech.recipe.RecipeMap;

//聚合粘土搅拌机配方
val mixer as RecipeMap = <recipemap:mixer>;
mixer.recipeBuilder()
    .inputs(<ore:dustClay> * 4, <ore:dustGold> * 1, <ore:dustLapis>, <ore:dustIron>)
    .circuit(4)
    .duration(30)
    .EUt(48)
    .outputs(<deepmoblearning:polymer_clay> * 32)
    .buildAndRegister();

//用LV机械方块替换 炭灰板材机械外壳
recipes.replaceAllOccurences(<deepmoblearning:machine_casing>, <gregtech:machine:986>);
recipes.remove(<deepmoblearning:machine_casing>);

//深度学习器
recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped(<deepmoblearning:deep_learner>, [
	[<deepmoblearning:soot_covered_plate>, <ore:dustRedstone>, <deepmoblearning:soot_covered_plate>], 
	[<ore:circuitLv>, <gregtech:meta_item_1:307>, <ore:circuitLv>], 
	[<deepmoblearning:soot_covered_plate>, <ore:dustRedstone>, <deepmoblearning:soot_covered_plate>]
]);