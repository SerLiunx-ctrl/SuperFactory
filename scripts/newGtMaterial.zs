//注册新GT材料和元素等(不包括合成表)，请勿随意修改!
//修改原有材料的属性
#loader gregtech
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;

//元素添加=============================
//无尽
var If = Elements.add(123, 59, -1, null, "Infinity", "If", false);
//终极
var Um = Elements.add(110, 87, -1, null, "Ultimate", "Um", false);
//超时空
var St = Elements.add(150, 77, -1, null, "Spacetime", "St", false);

//修改: 中子
var changedNeutronium = <material:neutronium>;

//保留材料
var specialMaterialLeft = MaterialBuilder(32003, "special_material_left") // name
    .fluid("gas", false) //气体和流体方块
    .ingot() //锭粉材料
    .color(0x0000FF) //纯蓝
    .iconSet("shiny") //材质集设置为 shiny
    //挖掘速度, 攻击伤害, 耐久, 附魔能力
    .toolStats(10, 3, 256, 21) //工具
    .blastTemp(9001) //高炉温度
    .ore() //矿石
    //.addOreByproducts(<material:gold>, <material:copper>) //副产物
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod"])
    //电压 基础电流 基础线损 是否为超导体
    .cableProperties(2097152, 8192, 0, true) //线缆
    .build(); //构建

 //GT磁钢
var GtElectricalSteel = MaterialBuilder(32004, "electrical_steel") //名称
    .fluid("fluid", false)
    .ingot(4) //锭粉材料
    .colorAverage()
    .iconSet("shiny") //材质集设置为 shiny
    .toolStats(10, 3, 450, 21) //工具
    .blastTemp(1801, "LOW", 40, 60) //高炉温度
    .components([<material:steel> * 1, <material:carbon> * 1])
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod"])
    .ore() //矿石
    .cableProperties(2048, 2, 2, false) //线缆
    .build(); //构建

//GT无尽锭
var GtInfinityIngot = MaterialBuilder(32005, "infinity") //名称
    .fluid("fluid", true)
    .ingot(10) //锭粉材料
    .color(0xCD6090)
    .iconSet("shiny") //材质集设置为 shiny
    .toolStats(66, 9000, 1238400000, 100) //工具
    .blastTemp(8000, "HIGHEST", 500000, 350) //高炉温度
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod", "generate_frame"])
    .ore(1, 1, true) //矿石
    .cableProperties(8388608, 8192, 0, true) //线缆
    // 温度, 流量, 是否气密性
    .fluidPipeProperties(100000, 10000, true) //管道
    .element("Infinity")
    .build(); //构建

//终极锭
var GtUltimate = MaterialBuilder(32006, "ultimate")
    .fluid("fluid", true)
    .ingot(50) //锭粉材料
    .color(0xFFCC00)
    .iconSet("shiny") //材质集设置为 shiny
    .toolStats(300, 20000, 1638400000, 500) //工具
    .blastTemp(9001, "HIGHEST", 2000000, 1000) //高炉温度
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod", "generate_frame"])
    .ore(1, 1, true) //矿石
    .cableProperties(33554432, 16384, 0, true) //线缆
    .fluidPipeProperties(1000000, 50000, true) //管道
    .element("Ultimate")
    .build(); //构建

//超时空锭
var GtSpaceTimeIngot = MaterialBuilder(32007, "space_time")
    .fluid("fluid", true)
    .ingot(100) //锭粉材料
    .color(0x00CCCC)
    .iconSet("shiny") //材质集设置为 shiny
    .toolStats(660, 90000, 2038400000, 1000) //工具
    .blastTemp(10800, "HIGHEST", 4000000, 2000) //高炉温度
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod", "generate_frame"])
    .ore(1, 1, true) //矿石
    .cableProperties(2147483647, 100000, 0, true) //线缆
    .fluidPipeProperties(10000000, 100000, true) //管道
    .element("Spacetime")
    .build(); //构建

//磷钇矿
var GtXenotime = MaterialBuilder(32008, "xenotime")
    .color(0x999900)
    .ore()
    .gem()
    .iconSet("DIAMOND")
    .components([<material:yttrium> * 1, <material:phosphorus> * 1, <material:oxygen> * 4])
    .build();

//GT龙锭
var Gtdraconium = MaterialBuilder(32009, "draconium")
    .fluid("fluid", true)
    .ingot(6) //锭粉材料
    .color(0xCC33FF)
    .iconSet("shiny") //材质集设置为 shiny
    .blastTemp(5401, "HIGH", 7100, 2000) //高炉温度
    .toolStats(10, 8, 1024, 23) //工具
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod", "generate_frame"])
    .ore(1, 1, false) //矿石
    .cableProperties(8388608, 8, 4, false) //线缆
    .fluidPipeProperties(4956, 400, false) //管道
    .build(); //构建

//GT觉醒龙锭
var GtdraconiumAwakened = MaterialBuilder(32010, "draconium_awakened")
    .fluid("fluid", true)
    .ingot(12) //锭粉材料
    .color(0xFF6600)
    .iconSet("shiny") //材质集设置为 shiny
    .blastTemp(9001, "HIGHER", 130000, 1000) //高炉温度
    .toolStats(15, 20, 3690, 50) //工具
    .flags(["generate_plate", "generate_foil", "generate_ring", "generate_rod", "generate_gear", 
    "generate_bolt_screw", "generate_spring", "generate_spring_small", "generate_rotor", "generate_long_rod", "generate_frame"])
    .ore(1, 1, false) //矿石
    .cableProperties(134217728, 10, 2, false) //线缆
    .fluidPipeProperties(12000, 600, true) //管道
    .build(); //构建