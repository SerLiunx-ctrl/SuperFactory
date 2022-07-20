import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

//初级虚空采矿场
var void_miner_outSize = 16;
var void_miner_loc = "mbt:void_miner";  //赋值loc
val void_miner = Builder.start(void_miner_loc) //自动补全ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()  //模版
                          .aisle("CCC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .aisle("CXC", "FXF", "FXF", "FXF", " F ", " F ", " F ")
                          .aisle("CSC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .where('S', controller.self())  //控制器
                          .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:6>).setMinGlobalLimited(2)//Luv 机械方块
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(1).setPreviewCount(1) //有一条IMPORT_ITEMS总线。JEI预览显示只有一条。
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1) //那里至少有一个INPUT_ENERGY仓. JEI只会显示一个
                          )
                          .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_20:3>).setMinGlobalLimited(15))
                          .where("X", CTPredicate.states(<metastate:gregtech:machine_casing:6>).setMinGlobalLimited(3))
                          //.where('M', controller.autoAbilities(false, false, false, false, false, false, true)) //等于CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>)
                          .where(' ', CTPredicate.getAny())  //任意方块
                          .build();  //构建
                 } as IPatternBuilderFunction)
    .withRecipeMap(  //RecipeMap
        FactoryRecipeMap.start("void_miner") //新建一个RecipeMap.
            .minInputs(1)
            .maxInputs(1)
            .minOutputs(1)
            .maxOutputs(void_miner_outSize)
            .maxFluidInputs(1)
            .build())  //构建
    .withBaseTexture(<metastate:gregtech:machine_casing:6>) //luv
    .buildAndRegister();  //构建和注册
//设置properties
void_miner.hasMaintenanceMechanics = true;  //维护机器，维护仓
void_miner.hasMufflerMechanics = false;  //消音，消音仓
//void_miner.frontOverlay = <cube_renderer:ASSEMBLER_RENDERasdasd>;  //前面材质

//添加Tooltip
<gregtech:machine:32000>.addTooltip(format.aqua("不想出门挖矿? 那就多造几台这个玩意"));
<gregtech:machine:32000>.addTooltip(format.green("插入 编程电路 可以获取不同的矿物"));
<gregtech:machine:32000>.addTooltip(format.gold("光标放在该控制器上默认按 U 可以查看矿产"));

//矿产1: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(1)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_aluminium_0> * 64,
            <gregtech:ore_beryllium_0> * 64,
            <gregtech:ore_cobalt_0> * 64,
            <gregtech:ore_copper_0> * 64,
            <gregtech:ore_gold_0> * 64,
            <gregtech:ore_iron_0> * 64,
            <gregtech:ore_lead_0> * 64,
            <gregtech:ore_lithium_0> * 64,
            <gregtech:ore_molybdenum_0> * 64,
            <gregtech:ore_neodymium_0> * 64,
            <gregtech:ore_nickel_0> * 64,
            <gregtech:ore_palladium_0> * 64,
            <gregtech:ore_platinum_0> * 64,
            <gregtech:ore_plutonium_0> * 64,
            <gregtech:ore_silver_0> * 64,
            <gregtech:ore_sulfur_0> * 64)
    .buildAndRegister();  //构建和注册
//矿产2: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(2)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_thorium_0> * 64,
            <gregtech:ore_tin_0> * 64,
            <gregtech:ore_naquadah_0> * 64,
            <gregtech:ore_certus_quartz_0> * 64,
            <gregtech:ore_almandine_0> * 64,
            <gregtech:ore_asbestos_0> * 64,
            <gregtech:ore_banded_iron_0> * 64,
            <gregtech:ore_blue_topaz_0> * 64,
            <gregtech:ore_brown_limonite_0> * 64,
            <gregtech:ore_calcite_0> * 64,
            <gregtech:ore_cassiterite_0> * 64,
            <gregtech:ore_cassiterite_sand_0> * 64,
            <gregtech:ore_chalcopyrite_0> * 64,
            <gregtech:ore_chromite_0> * 64,
            <gregtech:ore_cinnabar_0> * 64,
            <gregtech:ore_coal_0> * 64
            )
    .buildAndRegister();  //构建和注册