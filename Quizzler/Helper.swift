//
//  Helper.swift
//  Quizzler
//
//  Created by sam on 3/18/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class Helper {
    
//    static func myAlert(title:String,message:String,view:UIViewController) {
    static func myAlert(myVC:ViewController) {

        let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions, do you want to start over ?", preferredStyle: UIAlertControllerStyle.alert)
    
    
        let cancelAction = UIAlertAction(title: "AlertAction as Cancel", style: UIAlertActionStyle.cancel) { (anUIAlertAction) in
            print(" Completion Hander from UIAlertAction")
        }
        
        let restartAction = UIAlertAction(title: "restart", style: .default) { (UIAlertAction) in
            myVC.startOver()
        }
        
        alert.addAction(cancelAction)
        alert.addAction(restartAction)
        myVC.present(alert, animated: true, completion: nil)
    }
    
    
    
}
