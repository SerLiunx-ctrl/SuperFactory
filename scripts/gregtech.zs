import mods.gregtech.recipe.RecipeMap;

//配方添加

//搅拌机
val mixer as RecipeMap = <recipemap:mixer>;

//磁钢粉
mixer.recipeBuilder()
    .inputs(<ore:dustSteel> * 1, <ore:dustCoal> * 1)
    .outputs(<gregtech:meta_dust:32004>)
    .circuit(1)
    .duration(40) // ticks 工作时间
    .EUt(30) // 耗电/t
    .buildAndRegister();