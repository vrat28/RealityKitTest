//
//  ViewController.swift
//  RealityTest
//
//  Created by varun rathi on 11/06/21.
//

import UIKit
import RealityKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var selectedARObject: ARObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
//        let boxAnchor = try! Experience.loadBox()
//
//        // Add the box anchor to the scene
//        arView.scene.anchors.append(boxAnchor)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.loadARObject()
    }
    
    /*

                //  case    Wassenburg = "1_WassenbergAR"
                        //  case    Burgwassenbergar = "2_burgwassenbergar"
    case    Effeld = "3_Effeld"
                    //case    Motte = "4MOTTEAR"
                    // case    Breberen = "5_BrebernARV2"
                    // case    Selfkant = "6_Selfkant_AR"
    case    Heinsberg = "7_HeinsbergAR"
                    // case    Adolfosee = "8_AdolfoseeAR"
    case    Millcoh = "9_Millcoh1"
                    //case    Millich = "10_MillichARV2"
                    // case    Hohenbusch_I = "11_HH_AR2"
    //case    Hohenbusch_II = "12_HH_AR_V2"
    //case    Tuichen = "13_TuichenARundgebackenes_obst"
    //case    Trauerweider = "14_TrauerweiderAR"
    */

    
    func loadARObject() {
        
        switch self.selectedARObject {
        
        case .Wassenburg:
            let boxAnchor = try! Wassenburg.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
            
        case .Burgwassenbergar:
            let boxAnchor = try! Burgwassenbergar.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
            
        case .Hohenbusch_II:
            let boxAnchor = try! HohenbuschII.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
            
        case .Selfkant:
            let boxAnchor = try! Selfkant.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
            
        case .Trauerweider:
            let boxAnchor = try! Trauerweider.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
        case .Tuichen:
            let boxAnchor = try! Tuichen.loadBox()
            arView.scene.anchors.append(boxAnchor)
        
         
       case .Effeld:
        let boxAnchor = try! EffeldV1.loadBox()
        arView.scene.anchors.append(boxAnchor)
        
        
//        _3EffeldV2.loadSzeneAsync(completion: { [weak self]scene in
//            let s = try! scene.get()
//            print("debug: isMain \(Thread.isMainThread)")
//            DispatchQueue.main.async {
//                self?.arView.scene.anchors.append(s)
//            }
//
//        })
//
        
            
        
        
//         _3EffeldV2.loadSzeneAsync(completion: {[weak self] scene in
//            let s = try! scene.get()
//            print("debug: isMain \(Thread.isMainThread)")
//            DispatchQueue.main.async {
//                self?.arView.scene.anchors.append(s)
//            }
//        })

//            arView.scene.anchors.append(boxAnchor)
            
            
        case .Adolfosee:
            Trauerweider.loadSceneAsync(completion: { [weak self]scene in
                let s = try! scene.get()
                print("debug: isMain \(Thread.isMainThread)")
                DispatchQueue.main.async {
                    self?.arView.scene.anchors.append(s)
                }
               
            })
            
        
        case .Motte:
            
            _4Motte.loadBoxAsync { [weak self] scene in
                let s = try! scene.get()
                print("debug: isMain \(Thread.isMainThread)")
                DispatchQueue.main.async {
                    self?.arView.scene.anchors.append(s)
                }
            }
            
            
        case .Breberen:
            let boxAnchor = try! Breberen.loadBox()
            arView.scene.anchors.append(boxAnchor)
        
        case .Millcoh:
            let boxAnchor = try! _9Millcoh.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
            
        case .Millich:
            let boxAnchor = try! Millich10.loadBox()
            arView.scene.anchors.append(boxAnchor)
            
        case .Hohenbusch_I:
            let boxAnchor = try! HohenbuschI.loadBox()
            arView.scene.anchors.append(boxAnchor)
       
            
        case .Heinsberg:
            let boxAnchor = try! Heinsberg.loadBox()
            arView.scene.anchors.append(boxAnchor)
        default:
            print("nothing")
            
//            let boxAnchor = try! Heins
//            arView.scene.anchors.append(boxAnchor)
        }
    }
}
