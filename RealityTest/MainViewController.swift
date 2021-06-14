//
//  MainViewController.swift
//  RealityTest
//
//  Created by varun rathi on 11/06/21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showTestAlertClicked(){
        showTestingAlert { obj in
            DispatchQueue.main.async {
                self.showARView(with: obj)
            }

        }
    }
    
    func showARView(with object:ARObject){
        let arview = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AR") as! ViewController
        arview.selectedARObject = object
        self.navigationController?.pushViewController(arview, animated: true)
        }
    
    func showTestingAlert(_ completion: @escaping ((ARObject)->Void)){
        let alertcontroller = UIAlertController()
        
        let cancelAction = UIAlertAction(title: "Dismiss", style: .destructive) { action in
            alertcontroller.dismiss(animated: true, completion: nil)
        }
        alertcontroller.addAction(cancelAction)
        
        for obj in ARObject.allCases {
            let action = UIAlertAction(title: obj.rawValue, style: .default) { _  in
                completion(obj)
            }
            alertcontroller.addAction(action)
        }
     
        present(alertcontroller, animated: true, completion: nil)
    }
    

   

}
