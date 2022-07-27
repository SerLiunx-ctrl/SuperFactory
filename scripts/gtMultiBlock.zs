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
var void_miner_loc = "mbt:void_miner";  //赋值loc
val void_miner = Builder.start(void_miner_loc) //自动补全ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()  //模版
                          .aisle("CCC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .aisle("CXC", "FXF", "FXF", "FXF", " F ", " F ", " F ")
                          .aisle("CSC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .where('S', controller.self())  //控制器
                          .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:6>).setMinGlobalLimited(1)//Luv 机械方块
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
            .maxOutputs(16)
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
<gregtech:machine:32000>.addTooltip(format.yellow("可获得的产物:"));
<gregtech:machine:32000>.addTooltip(format.lightPurple("    - 几乎所有矿石(特殊矿石如无尽, 超时空等除外)"));

//高级虚空采矿场
var void_miner_advanced_loc = "mbt:void_miner_advanced";  //赋值loc
val void_miner_advanced = Builder.start(void_miner_advanced_loc) //自动补全ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()  //模版
                          .aisle("CCC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .aisle("CXC", "FXF", "FXF", "FXF", " F ", " F ", " F ")
                          .aisle("CSC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .where('S', controller.self())  //控制器
                          .where("C", CTPredicate.states(<metastate:gregtech:machine_casing:8>).setMinGlobalLimited(1)//Luv 机械方块
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(1).setPreviewCount(1) //有一条IMPORT_ITEMS总线。JEI预览显示只有一条。
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1) //那里至少有一个INPUT_ENERGY仓. JEI只会显示一个
                          )
                          .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_7:15>).setMinGlobalLimited(15))
                          .where("X", CTPredicate.states(<metastate:gregtech:machine_casing:8>).setMinGlobalLimited(3))
                          //.where('M', controller.autoAbilities(false, false, false, false, false, false, true)) //等于CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>)
                          .where(' ', CTPredicate.getAny())  //任意方块
                          .build();  //构建
                 } as IPatternBuilderFunction)
    .withRecipeMap(  //RecipeMap
        FactoryRecipeMap.start("void_miner_advanced") //新建一个RecipeMap.
            .minInputs(1)
            .maxInputs(1)
            .minOutputs(1)
            .maxOutputs(16)
            .maxFluidInputs(1)
            .build())  //构建
    .withBaseTexture(<metastate:gregtech:machine_casing:8>) //luv
    .buildAndRegister();  //构建和注册
//设置properties
void_miner_advanced.hasMaintenanceMechanics = true;  //维护机器，维护仓
void_miner_advanced.hasMufflerMechanics = false;  //消音，消音仓
//添加Tooltip
<gregtech:machine:32001>.addTooltip(format.aqua("后期了还差资源? 那就造几台这个玩意"));
<gregtech:machine:32001>.addTooltip(format.green("插入 编程电路 可以获取不同的资源"));
<gregtech:machine:32001>.addTooltip(format.gold("光标放在该控制器上默认按 U 可以查看能获取的资源"));
<gregtech:machine:32001>.addTooltip(format.yellow("可获得的产物:"));
<gregtech:machine:32001>.addTooltip(format.lightPurple("    - 非矿产，但你可能很需要的资源"));

//终极虚空采矿场
var void_miner_ultimate_loc = "mbt:void_miner_ultimate";
var void_miner_ultimate = Builder.start(void_miner_ultimate_loc) //自动补全ID
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start()  //模版
                          .aisle("CCC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .aisle("CXC", "FXF", "FXF", "FXF", " F ", " F ", " F ")
                          .aisle("CSC", " F ", " F ", " F ", "   ", "   ", "   ")
                          .where('S', controller.self())  //控制器
                          .where("C", CTPredicate.states(<metastate:gregtech:meta_block_compressed_2000:5>).setMinGlobalLimited(1)//Luv 机械方块
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(0).setMaxGlobalLimited(1).setPreviewCount(1) //有一条IMPORT_ITEMS总线。JEI预览显示只有一条。
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(2).setPreviewCount(1) //那里至少有一个INPUT_ENERGY仓. JEI只会显示一个
                          )
                          .where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_2000:5>).setMinGlobalLimited(15))
                          .where("X", CTPredicate.states(<metastate:gregtech:meta_block_compressed_2000:5>).setMinGlobalLimited(3))
                          //.where('M', controller.autoAbilities(false, false, false, false, false, false, true)) //等于CTPredicate.abilities(<mte_ability:MUFFLER_HATCH>)
                          .where(' ', CTPredicate.getAny())  //任意方块
                          .build();  //构建
                 } as IPatternBuilderFunction)
    .withRecipeMap(  //RecipeMap
        FactoryRecipeMap.start("void_miner_ultimate") //新建一个RecipeMap.
            .minInputs(1)
            .maxInputs(1)
            .minOutputs(1)
            .maxOutputs(16)
            .maxFluidInputs(1)
            .build())  //构建
    .withBaseTexture(<metastate:gregtech:meta_block_compressed_2000:5>) //luv
    .buildAndRegister();  //构建和注册
//设置properties
void_miner_ultimate.hasMaintenanceMechanics = true;  //维护机器，维护仓
void_miner_ultimate.hasMufflerMechanics = false;  //消音，消音仓
//添加Tooltip
<gregtech:machine:32002>.addTooltip(format.aqua("这玩意能获得啥?"));


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
//矿产3: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(3)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_cobaltite_0> * 64,
             <gregtech:ore_cooperite_0> * 64,
             <gregtech:ore_diamond_0> * 64,
             <gregtech:ore_emerald_0> * 64,
             <gregtech:ore_galena_0> * 64,
             <gregtech:ore_garnierite_0> * 64,
             <gregtech:ore_green_sapphire_0> * 64,
             <gregtech:ore_grossular_0> * 64,
             <gregtech:ore_ilmenite_0> * 64,
             <gregtech:ore_bauxite_0> * 64,
             <gregtech:ore_lazurite_0> * 64,
             <gregtech:ore_magnesite_0> * 64,
             <gregtech:ore_magnetite_0> * 64,
             <gregtech:ore_molybdenite_0> * 64,
             <gregtech:ore_powellite_0> * 64,
             <gregtech:ore_pyrite_0> * 64
            )
    .buildAndRegister();
//矿产4: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(4)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_pyrolusite_0> * 64,
             <gregtech:ore_pyrope_0> * 64,
             <gregtech:ore_rock_salt_0> * 64,
             <gregtech:ore_ruby_0> * 64,
             <gregtech:ore_salt_0> * 64,
             <gregtech:ore_saltpeter_0> * 64,
             <gregtech:ore_sapphire_0> * 64,
             <gregtech:ore_scheelite_0> * 64,
             <gregtech:ore_sodalite_0> * 64,
             <gregtech:ore_tantalite_0> * 64,
             <gregtech:ore_spessartine_0> * 64,
             <gregtech:ore_sphalerite_0> * 64,
             <gregtech:ore_stibnite_0> * 64,
             <gregtech:ore_tetrahedrite_0> * 64,
             <gregtech:ore_topaz_0> * 64,
             <gregtech:ore_tungstate_0> * 64
            )
    .buildAndRegister();
//矿产5: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(5)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_uraninite_0> * 64,
             <gregtech:ore_wulfenite_0> * 64,
             <gregtech:ore_yellow_limonite_0> * 64,
             <gregtech:ore_nether_quartz_0> * 64,
             <gregtech:ore_quartzite_0> * 64,
             <gregtech:ore_graphite_0> * 64,
             <gregtech:ore_bornite_0> * 64,
             <gregtech:ore_chalcocite_0> * 64,
             <gregtech:ore_realgar_0> * 64,
             <gregtech:ore_bastnasite_0> * 64,
             <gregtech:ore_pentlandite_0> * 64,
             <gregtech:ore_spodumene_0> * 64,
             <gregtech:ore_lepidolite_0> * 64,
             <gregtech:ore_glauconite_sand_0> * 64,
             <gregtech:ore_malachite_0> * 64,
             <gregtech:ore_mica_0> * 64
            )
    .buildAndRegister();
//矿产6: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(6)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_barite_0> * 64,
             <gregtech:ore_alunite_0> * 64,
             <gregtech:ore_talc_0> * 64,
             <gregtech:ore_soapstone_0> * 64,
             <gregtech:ore_kyanite_0> * 64,
             <gregtech:ore_pyrochlore_0> * 64,
             <gregtech:ore_oilsands_0> * 64,
             <gregtech:ore_olivine_0> * 64,
             <gregtech:ore_opal_0> * 64,
             <gregtech:ore_amethyst_0> * 64,
             <gregtech:ore_lapis_0> * 64,
             <gregtech:ore_apatite_0> * 64,
             <gregtech:ore_tricalcium_phosphate_0> * 64,
             <gregtech:ore_garnet_red_0> * 64,
             <gregtech:ore_garnet_yellow_0> * 64,
             <gregtech:ore_vanadium_magnetite_0> * 64
            )
    .buildAndRegister();
//矿产7: 初级虚空采矿场
void_miner.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(32700)
    .circuit(7)
    .fluidInputs(<liquid:drilling_fluid> * 1000)  //输入流体
    .outputs(<gregtech:ore_pollucite_0> * 64,
            <gregtech:ore_bentonite_0> * 64,
            <gregtech:ore_fullers_earth_0> * 64,
            <gregtech:ore_pitchblende_0> * 64,
            <gregtech:ore_monazite_0> * 64,
            <gregtech:ore_trona_0> * 64,
            <gregtech:ore_gypsum_0> * 64,
            <gregtech:ore_zeolite_0> * 64,
            <gregtech:ore_redstone_0> * 64,
            <gregtech:ore_electrotine_0> * 64,
            <gregtech:ore_diatomite_0> * 64,
            <gregtech:ore_granitic_mineral_sand_0> * 64,
            <gregtech:ore_garnet_sand_0> * 64,
            <gregtech:ore_basaltic_mineral_sand_0> * 64,
            <gregtech:ore_electrical_steel_0> * 64,
            <gregtech:ore_xenotime_0> * 64)
    .buildAndRegister();

//产物1: 高级虚空采矿场
void_miner_advanced.recipeMap.recipeBuilder()
    .duration(600)
    .EUt(524000)
    .circuit(1)
    .fluidInputs(<liquid:plasma.helium> * 10)
    .outputs(<avaritia:resource:5> * 10,
             <minecraft:nether_star> * 3,
             <avaritia:resource:3> *32
            )
    .chancedOutput(<gregtech:meta_dust_tiny:32005>, 100, 50)
    .buildAndRegister();