//
//  TwoVC.swift
//  WorkWithColors
//
//  Created by сергей on 13.08.22.
//

import UIKit

class TwoVC: UIViewController, ColorUpdate {
    func onColorUpdate(color: UIColor) {
        viewColor.backgroundColor = color
        
    }
    
    
    var delegate: ColorUpdate?
    var colorView: UIColor?
    
    
    @IBOutlet weak var sliderRed: UISlider!
    
    @IBOutlet weak var tfRed: UITextField!
    
    
    @IBOutlet weak var sliderGreen: UISlider!
    
    @IBOutlet weak var tfGreen: UITextField!
    
    
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var tfBlue: UITextField!
    
    @IBOutlet weak var sliderGrey: UISlider!
    
    @IBOutlet weak var tfGrey: UITextField!
    
    @IBOutlet weak var viewColor: UIView!
    
    
    @IBAction func redTFAct(_ sender: UITextField) {
        guard let myValueRed = tfRed.text, !myValueRed.isEmpty else { return }
                if let myValueRed = Float(tfRed.text!), myValueRed <= 1
                {
                    sliderRed.value = myValueRed
                    viewColour()
                }
    }
    
    
    @IBAction func greenTFAct(_ sender: UITextField) {
        guard let myValueRed = tfGreen.text, !myValueRed.isEmpty else { return }
                if let myValueRed = Float(tfGreen.text!), myValueRed <= 1
                {
                    sliderGreen.value = myValueRed
                    viewColour()
                }
    }
    
    
    @IBAction func blueTFAct(_ sender: UITextField) {
        guard let myValueRed = tfBlue.text, !myValueRed.isEmpty else { return }
                if let myValueRed = Float(tfBlue.text!), myValueRed <= 1
                {
                    sliderBlue.value = myValueRed
                    viewColour()
                }
    }
    
    
    @IBAction func greyTFAct(_ sender: UITextField) {
        guard let myValueRed = tfGrey.text, !myValueRed.isEmpty else { return }
                if let myValueRed = Float(tfGrey.text!), myValueRed <= 1
                {
                    sliderGrey.value = myValueRed
                    viewColour()
                }
    }
    
    
    
    @IBAction func greySliderAct(_ sender: UISlider) {
        tfGrey.text = String(NSString(format: "%.0f", sliderGrey.value * 100))
                viewColour()
    }
    
    
    
    
    @IBAction func sumSliderAction(_ sender: UISlider) {
        
                viewColour()
                tfRed.text = String(NSString(format: "%.0f", sliderRed.value * 100))
                tfGreen.text = String(NSString(format: "%.0f", sliderGreen.value * 100))
                tfBlue.text = String(NSString(format: "%.0f", sliderBlue.value * 100))

            }
    
    
    @IBAction func DoneAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        delegate?.onColorUpdate(color: viewColor.backgroundColor!)
               }
    
    
    

   
    func viewColour() {
            viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green:CGFloat((sliderGreen.value)), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderGrey.value))
        }

}
