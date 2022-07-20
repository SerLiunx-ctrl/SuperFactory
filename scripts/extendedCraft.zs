
//终极锭
mods.extendedcrafting.TableCrafting.addShapeless(4, <gregtech:meta_ingot:32006>, [<ore:ingotIron>, <ore:ingotGold>, 
<ore:ingotCopper>, <ore:ingotLead>, <ore:ingotTin>, <ore:ingotSilver>, 
<ore:ingotSteel>, <ore:ingotAluminium>, <ore:ingotStainlessSteel>, <ore:ingotTitanium>, 
<ore:ingotTungstenSteel>, <ore:ingotRhodiumPlatedPalladium>, <ore:ingotNaquadahAlloy>, 
<ore:ingotDarmstadtium>, <ore:ingotNaquadah>, <ore:ingotNaquadahEnriched>, <ore:ingotInvar>, 
<ore:ingotOsmium>, <ore:ingotIndium>, <ore:ingotNickel>, <ore:ingotNiobium>, <ore:ingotRhodium>, 
<ore:ingotRuthenium>, <ore:ingotSamarium>, <ore:ingotSilicon>, <ore:ingotThorium>, 
<ore:ingotKanthal>, <ore:ingotMagnalium>, <ore:ingotNichrome>, <ore:ingotVanadiumGallium>, 
<ore:ingotUltimet>, <ore:ingotWroughtIron>, <ore:ingotYttriumBariumCuprate>, <ore:ingotOsmiridium>, 
<ore:ingotGalliumArsenide>, <ore:ingotIndiumGalliumPhosphide>, <ore:ingotNickelZincFerrite>, 
<ore:ingotTungstenCarbide>, <ore:ingotManganesePhosphide>, <ore:ingotMagnesiumDiboride>, 
<ore:ingotUraniumTriplatinum>, <ore:ingotSamariumIronArsenicOxide>, <ore:ingotCobalt>, 
<ore:ingotChrome>, <ore:ingotElectrum>, <ore:ingotEnergeticSilver>, <ore:ingotVividAlloy>, 
<ore:ingotMelodicAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotConductiveIron>, 
<ore:ingotPulsatingIron>, <ore:ingotDarkSteel>, <ore:ingotSoularium>, <ore:ingotEndSteel>, 
<ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <ore:ingotInfinity>, <ore:ingotPlutonium>, 
<ore:ingotPlutonium241>, <ore:ingotYttrium>]);

//终极锭: 转换
recipes.addShapeless(<extendedcrafting:material:32>, [<gregtech:meta_ingot:32006>]);
recipes.addShapeless(<gregtech:meta_ingot:32006>, [<extendedcrafting:material:32>]);

//终极锭: 隐藏原版终极锭
mods.jei.JEI.hide(<extendedcrafting:material:32>);

//移除: 基础工作台
recipes.remove(<extendedcrafting:table_basic>);
//移除: 高级工作台
recipes.remove(<extendedcrafting:table_advanced>);
//移除: 精英工作台
recipes.remove(<extendedcrafting:table_elite>);
//移除: 终极工作台
recipes.remove(<extendedcrafting:table_ultimate>);
//移除: 量子压缩机
recipes.remove(<extendedcrafting:compressor>);


//高级工作台
recipes.addShaped(<extendedcrafting:table_advanced>, [
	[<ore:ingotVividAlloy>, <gregtech:meta_item_1:129>, <ore:ingotVividAlloy>], 
	[<gregtech:meta_item_1:189>, <gregtech:machine:1647>, <gregtech:meta_item_1:189>], 
	[<ore:circuitHv>, <gregtech:meta_item_1:129>, <ore:circuitHv>]
]);

//精英工作台
mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:table_elite>, [
	[<ore:circuitEv>, <ore:wireGtSingleUraniumTriplatinum>, <gregtech:meta_item_1:190>, <ore:wireGtSingleUraniumTriplatinum>, <ore:circuitEv>], 
	[<gregtech:meta_item_1:175>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:130>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:175>], 
	[<gregtech:machine:113>, <gregtech:meta_item_1:160>, <extendedcrafting:table_advanced>, <gregtech:meta_item_1:160>, <gregtech:machine:113>], 
	[<gregtech:meta_item_1:175>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:130>, <gregtech:meta_item_1:205>, <gregtech:meta_item_1:175>], 
	[<ore:circuitEv>, <ore:wireGtSingleUraniumTriplatinum>, <gregtech:meta_item_1:190>, <ore:wireGtSingleUraniumTriplatinum>, <ore:circuitEv>]
]);

//终极工作台
mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:table_ultimate>, [
	[<ore:plateCobalt>, <ore:plateCobalt>, <ore:plateCobalt>, <ore:wireGtSingleUraniumRhodiumDinaquadide>, <ore:plateCobalt>, <ore:plateCobalt>, <ore:plateCobalt>], 
	[<ore:plateCobalt>, <gregtech:meta_item_1:176>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:191>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:176>, <ore:plateCobalt>], 
	[<ore:plateCobalt>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:131>, <gregtech:meta_item_1:206>, <ore:plateTungstenSteel>, <ore:plateCobalt>], 
	[<ore:wireGtSingleUraniumRhodiumDinaquadide>, <gregtech:meta_item_1:191>, <gregtech:meta_item_1:161>, <extendedcrafting:table_elite>, <gregtech:meta_item_1:161>, <gregtech:meta_item_1:191>, <ore:wireGtSingleUraniumRhodiumDinaquadide>], 
	[<ore:plateCobalt>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:206>, <gregtech:meta_item_1:131>, <gregtech:meta_item_1:206>, <ore:plateTungstenSteel>, <ore:plateCobalt>], 
	[<ore:plateCobalt>, <gregtech:meta_item_1:176>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:191>, <ore:plateTungstenSteel>, <gregtech:meta_item_1:176>, <ore:plateCobalt>], 
	[<ore:plateCobalt>, <ore:plateCobalt>, <ore:plateCobalt>, <ore:wireGtSingleUraniumRhodiumDinaquadide>, <ore:plateCobalt>, <ore:plateCobalt>, <ore:plateCobalt>]
]);

//量子压缩机
mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:compressor>, [
	[<tconstruct:large_plate>.withTag({Material: "neutronium"}), <tconstruct:large_plate>.withTag({Material: "neutronium"}), null, <appliedenergistics2:material:47>, <ore:plateNeutronium>, <appliedenergistics2:material:47>, null, <tconstruct:large_plate>.withTag({Material: "neutronium"}), <tconstruct:large_plate>.withTag({Material: "neutronium"})], 
	[<tconstruct:large_plate>.withTag({Material: "neutronium"}), null, null, null, <ore:plateNeutronium>, null, null, null, <tconstruct:large_plate>.withTag({Material: "neutronium"})], 
	[null, null, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:164>, <ore:plateNeutronium>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:179>, null, null], 
	[<appliedenergistics2:material:47>, null, <gregtech:meta_item_1:164>, <ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide>, <ore:circuitUv>, <ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide>, <gregtech:meta_item_1:164>, null, <appliedenergistics2:material:47>], 
	[<ore:plateNeutronium>, <ore:plateNeutronium>, <ore:plateNeutronium>, <ore:circuitUv>, <gregtech:machine:237>, <ore:circuitUv>, <ore:plateNeutronium>, <ore:plateNeutronium>, <ore:plateNeutronium>], 
	[<appliedenergistics2:material:47>, null, <gregtech:meta_item_1:164>, <ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide>, <ore:circuitUv>, <ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide>, <gregtech:meta_item_1:164>, null, <appliedenergistics2:material:47>], 
	[null, null, <gregtech:meta_item_1:179>, <gregtech:meta_item_1:164>, <ore:plateNeutronium>, <gregtech:meta_item_1:164>, <gregtech:meta_item_1:179>, null, null], 
	[<tconstruct:large_plate>.withTag({Material: "neutronium"}), null, null, null, <ore:plateNeutronium>, null, null, null, <tconstruct:large_plate>.withTag({Material: "neutronium"})], 
	[<tconstruct:large_plate>.withTag({Material: "neutronium"}), <tconstruct:large_plate>.withTag({Material: "neutronium"}), null, <appliedenergistics2:material:47>, <ore:plateNeutronium>, <appliedenergistics2:material:47>, null, <tconstruct:large_plate>.withTag({Material: "neutronium"}), <tconstruct:large_plate>.withTag({Material: "neutronium"})]
]);
