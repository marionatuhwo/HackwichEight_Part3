//
//  ViewController.swift
//  HW8
//
//  Created by Marion Ano on 3/9/21.
//  Copyright © 2021 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 25
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.value = 50
        currentValue = Int(slider.value)
        // Int has an instance method called random
        //targetValue = Int.random(in: 0...100)
        
        //call the function
        startNewRound()
    }
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        currentValue = Int(slider.value)
    
    }
    func startNewRound(){
        targetValue = Int.random(in: 0...100)
        currentValue = Int(slider.value)

    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is\(currentValue)" + "\n The Target Value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
}
