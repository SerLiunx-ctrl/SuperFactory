//配方移除
mods.avaritia.ExtremeCrafting.remove(<solarflux:solar_panel_infinity>);
mods.avaritia.ExtremeCrafting.remove(<solarflux:solar_panel_neutronium>);
recipes.remove(<solarflux:solar_panel_1>);
recipes.remove(<solarflux:solar_panel_2>);
recipes.remove(<solarflux:solar_panel_3>);
recipes.remove(<solarflux:solar_panel_4>);
recipes.remove(<solarflux:solar_panel_5>);
recipes.remove(<solarflux:solar_panel_6>);
recipes.remove(<solarflux:solar_panel_7>);

//太阳能 I
<solarflux:solar_panel_1>.addTooltip(format.gray("LV 级太阳能"));
recipes.addShaped(<solarflux:solar_panel_1>, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>], 
	[<ore:batteryLv>, <gregtech:meta_item_1:331>, <ore:batteryLv>], 
	[<ore:cableGtSingleTin>, <ore:circuitLv>, <ore:cableGtSingleTin>]
]);

//太阳能 II
<solarflux:solar_panel_2>.addTooltip(format.aqua("MV 级太阳能"));
recipes.addShaped(<solarflux:solar_panel_2>, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>], 
	[<ore:batteryMv>, <gregtech:meta_item_1:331>, <ore:batteryMv>], 
	[<ore:cableGtSingleCopper>, <ore:circuitMv>, <ore:cableGtSingleCopper>]
]);

//太阳能 III
<solarflux:solar_panel_3>.addTooltip(format.gold("HV 级太阳能"));
recipes.addShaped(<solarflux:solar_panel_3>, [
	[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>], 
	[<ore:batteryHv>, <gregtech:meta_item_1:331>, <ore:batteryHv>], 
	[<ore:cableGtSingleGold>, <ore:circuitHv>, <ore:cableGtSingleGold>]
]);

//太阳能 IV
<solarflux:solar_panel_4>.addTooltip(format.darkPurple("EV 级太阳能"));
recipes.addShaped(<solarflux:solar_panel_4>, [
	[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>], 
	[<ore:batteryEv>, <gregtech:meta_item_1:331>, <ore:batteryEv>], 
	[<ore:cableGtSingleAluminium>, <ore:circuitEv>, <ore:cableGtSingleAluminium>]
]);

//太阳能 V
<solarflux:solar_panel_5>.addTooltip(format.darkBlue("IV 级太阳能"));
mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:solar_panel_5>, [
	[<gregtech:meta_item_1:373>, <gregtech:transparent_casing>, <solarflux:solar_panel_3>, <gregtech:transparent_casing>, <gregtech:meta_item_1:373>], 
	[<ore:cableGtSinglePlatinum>, <ore:wireGtSingleSamariumIronArsenicOxide>, <ore:circuitIv>, <ore:wireGtSingleSamariumIronArsenicOxide>, <ore:cableGtSinglePlatinum>], 
	[<solarflux:solar_panel_3>, <ore:circuitIv>, <gregtech:machine:990>, <ore:circuitIv>, <solarflux:solar_panel_3>], 
	[<ore:cableGtSinglePlatinum>, <ore:wireGtSingleSamariumIronArsenicOxide>, <ore:circuitIv>, <ore:wireGtSingleSamariumIronArsenicOxide>, <ore:cableGtSinglePlatinum>], 
	[<gregtech:meta_item_1:373>, <ore:batteryIv>, <solarflux:solar_panel_3>, <ore:batteryIv>, <gregtech:meta_item_1:373>]
]);

//太阳能 VI
<solarflux:solar_panel_6>.addTooltip(format.lightPurple("Luv 级太阳能"));
mods.extendedcrafting.TableCrafting.addShaped(2, <solarflux:solar_panel_6>, [
	[<gregtech:meta_item_1:373>, <gregtech:transparent_casing>, <solarflux:solar_panel_4>, <gregtech:transparent_casing>, <gregtech:meta_item_1:373>], 
	[<ore:cableGtSingleNiobiumTitanium>, <ore:wireGtSingleIndiumTinBariumTitaniumCuprate>, <ore:circuitLuv>, <ore:wireGtSingleIndiumTinBariumTitaniumCuprate>, <ore:cableGtSingleNiobiumTitanium>], 
	[<solarflux:solar_panel_4>, <ore:circuitLuv>, <gregtech:machine:991>, <ore:circuitLuv>, <solarflux:solar_panel_4>], 
	[<ore:cableGtSingleNiobiumTitanium>, <ore:wireGtSingleIndiumTinBariumTitaniumCuprate>, <ore:circuitLuv>, <ore:wireGtSingleIndiumTinBariumTitaniumCuprate>, <ore:cableGtSingleNiobiumTitanium>], 
	[<gregtech:meta_item_1:373>, <ore:batteryLuv>, <solarflux:solar_panel_4>, <ore:batteryLuv>, <gregtech:meta_item_1:373>]
]);

//太阳能 VII
<solarflux:solar_panel_7>.addTooltip(format.white("ZPM 级太阳能"));
mods.extendedcrafting.TableCrafting.addShaped(3, <solarflux:solar_panel_7>, [
	[<ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>], 
	[<ore:plateNaquadahAlloy>, <gregtech:meta_item_1:532>, <gregtech:meta_item_1:373>, <cookingforblockheads:ice_unit>, <gregtech:meta_item_1:373>, <gregtech:meta_item_1:532>, <ore:plateNaquadahAlloy>], 
	[<ore:plateNaquadahAlloy>, <gregtech:meta_item_1:532>, <enderio:item_capacitor_stellar>, <ore:circuitZpm>, <enderio:item_capacitor_stellar>, <gregtech:meta_item_1:532>, <ore:plateNaquadahAlloy>], 
	[<ore:plateNaquadahAlloy>, <gregtech:meta_item_1:133>, <solarflux:solar_panel_4>, <gregtech:meta_item_1:333>, <solarflux:solar_panel_4>, <gregtech:meta_item_1:133>, <ore:plateNaquadahAlloy>], 
	[<ore:plateNaquadahAlloy>, <cookingforblockheads:ice_unit>, <enderio:item_capacitor_stellar>, <ore:circuitZpm>, <enderio:item_capacitor_stellar>, <cookingforblockheads:ice_unit>, <ore:plateNaquadahAlloy>], 
	[<ore:plateNaquadahAlloy>, <ore:cableGtSingleVanadiumGallium>, <enderio:item_endergy_conduit:11>, <gregtech:machine:2061>, <enderio:item_endergy_conduit:11>, <ore:cableGtSingleVanadiumGallium>, <ore:plateNaquadahAlloy>], 
	[<ore:wireGtHexUraniumRhodiumDinaquadide>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:batteryZpm>, <ore:plateNaquadahAlloy>, <ore:plateNaquadahAlloy>, <ore:wireGtHexUraniumRhodiumDinaquadide>]
]);