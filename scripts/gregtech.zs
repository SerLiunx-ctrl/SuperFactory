import mods.gregtech.recipe.RecipeMap;

//搅拌机
val mixer as RecipeMap = <recipemap:mixer>;
val extractor as RecipeMap = <recipemap:extractor>;
val fusion_reactor as RecipeMap = <recipemap:fusion_reactor>;

//Tooltips
<gregtech:meta_item_1:640>.addTooltip(format.blue("IV-等级"));

//搅拌机: 磁钢粉
mixer.recipeBuilder()
    .inputs(<ore:dustSteel> * 1, <ore:dustCoal> * 1)
    .outputs(<gregtech:meta_dust:32004>)
    .circuit(1)
    .duration(40) // ticks 工作时间
    .EUt(30) // 耗电/t
    .buildAndRegister();

//提取机: 熔融无尽
extractor.findRecipe(480, [<gregtech:meta_ingot:32005>], null).remove();
extractor.recipeBuilder()
    .inputs(<ore:ingotInfinity> * 1)
    .fluidOutputs(<liquid:infinity> * 144)
    .duration(180)
    .EUt(480)
    .buildAndRegister();

//提取机: 熔融终极
extractor.findRecipe(480, [<gregtech:meta_ingot:32006>], null).remove();
extractor.recipeBuilder()
    .inputs(<ore:ingotUltimate> * 1)
    .fluidOutputs(<liquid:ultimate> * 144)
    .duration(192)
    .EUt(480)
    .buildAndRegister();

//核聚变: 熔融超时空
fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:infinity> * 144, <liquid:ultimate> * 144)
    .fluidOutputs(<liquid:space_time> * 1)
    .duration(1200)
    .EUt(480000)
    .property("eu_to_start", 620000000)
    .buildAndRegister();

