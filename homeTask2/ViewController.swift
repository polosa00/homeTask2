//
//  ViewController.swift
//  homeTask2
//
//  Created by Institute Sk on 16.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    var red: CGFloat = 255
    var green:CGFloat = 255
    var blue: CGFloat = 255

    @IBOutlet var mainView: UIView!
    @IBOutlet var labelValueRedSlider: UILabel!
    @IBOutlet var labelValueGreenSlider: UILabel!
    @IBOutlet var labelValueBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Sliders
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 255
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 255
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 255
        
        
        
        
        mainView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mainView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    
   
    @IBAction func actionRedSlider() {
        
        red = CGFloat(redSlider.value)
        labelValueRedSlider.text = String(Int(redSlider.value))
        mainView.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    
    @IBAction func actionGreenSlider() {
        green = CGFloat(greenSlider.value)
        labelValueGreenSlider.text = String(Int(greenSlider.value))
        mainView.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    
    @IBAction func actionBlueAction() {
        blue = CGFloat(blueSlider.value)
        labelValueBlueSlider.text = String(Int(blueSlider.value))
        mainView.backgroundColor = UIColor(red: red, green: green/255, blue: blue/255, alpha: 1)
    }
    
 
}

