//
//  ViewController.swift
//  Tute1 ColorMixer
//
//  Created by Charitha Rajapakse on 2/1/20.
//  Copyright © 2020 Charitha Rajapakse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables for colors and view
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    var redVal: CGFloat = 0.0;
    var greenVal: CGFloat = 0.0;
    var blueVAl: CGFloat = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorView.layer.borderWidth = 1
        self.colorView.layer.borderColor = UIColor(red:22/255, green:225/255, blue:227/255, alpha: 1).cgColor
    }
    
    //methods for sliders
    @IBAction func redSlider(_ sender: Any) {
        redValue.text = "\(Int(rSlider.value))"
        redVal = (CGFloat(rSlider.value))
        changeColor()
    }
    
    @IBAction func greenSlider(_ sender: Any) {
        greenValue.text = "\(Int(gSlider.value))"
        greenVal = (CGFloat(gSlider.value))
        changeColor()
    }
    
    @IBAction func blueSlider(_ sender: Any) {
        blueValue.text = "\(Int(bSlider.value))"
        blueVAl = (CGFloat(bSlider.value))
        changeColor()
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: redVal/255, green: greenVal/255, blue: blueVAl/255, alpha: 1.0)
    }
    

}

