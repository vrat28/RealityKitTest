//
//  AR Object.swift
//  RealityTest
//
//  Created by varun rathi on 11/06/21.
//

import Foundation


enum ARObject:String, CaseIterable {
    case    Wassenburg = "1_WassenbergAR"
    case    Burgwassenbergar = "2_burgwassenbergar"
    case    Effeld = "3_Effeld"
    case    Motte = "4MOTTEAR"
    case    Breberen = "5_BrebernARV2"
    case    Selfkant = "6_Selfkant_AR"
    case    Heinsberg = "7_HeinsbergAR"
    case    Adolfosee = "8_AdolfoseeAR"
    case    Millcoh = "9_Millcoh1"
    case    Millich = "10_MillichARV2"
    case    Hohenbusch_I = "11_HH_AR2"
    case    Hohenbusch_II = "12_HH_AR_V2"
    case    Tuichen = "13_TuichenARundgebackenes_obst"
    case    Trauerweider = "14_TrauerweiderAR"
    
    
    func getUSDZPathForEntity() -> String? {
        return self.rawValue
    }
}
/*

case    Wassenburg = "1_WassenbergAR"
case    Burgwassenbergar = "2_burgwassenbergar"
case    Effeld = "3_Effeld"
case    Motte = "4MOTTEAR"
case    Breberen = "5_BrebernARV2"
case    Selfkant = "6_Selfkant_AR"
case    Heinsberg = "7_HeinsbergAR"
case    Adolfosee = "8_AdolfoseeAR"
case    Millcoh = "9_Millcoh1"
case    Millich = "10_MillichARV2"
case    Hohenbusch_I = "11_HH_AR2"
//case    Hohenbusch_II = "12_HH_AR_V2"
//case    Tuichen = "13_TuichenARundgebackenes_obst"
//case    Trauerweider = "14_TrauerweiderAR"
*/
