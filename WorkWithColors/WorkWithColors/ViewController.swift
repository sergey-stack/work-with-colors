//
//  ViewController.swift
//  WorkWithColors
//
//  Created by сергей on 13.08.22.
//

import UIKit

protocol ColorUpdate {
    func onColorUpdate(color: UIColor)
}

class ViewController: UIViewController, ColorUpdate {
    func onColorUpdate(color: UIColor) {
        superView.backgroundColor = color
        
    }
    
    @IBOutlet var superView: UIView!
        
    
    
    
    @IBAction func transitionOnTwoVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let transitionVc = storyboard.instantiateViewController(withIdentifier: "TwoVC") as! TwoVC
        transitionVc.colorView = superView.backgroundColor!
        transitionVc.delegate = self
        self.navigationController?.pushViewController(transitionVc, animated: true)
        
    }
    
    
        
    }



