//
//  ViewController.swift
//  BullsEye
//
//  Created by Anthony Beckford on 2/25/23.
//

import UIKit


// Generate the random number Generate the random number to be used as the target by the game.

// Add rounds to the game: Add the ability to start a new round of the game.

// Display the target value: Display the generated target number on screen.

class ViewController: UIViewController {
    // imporve the slider: Set the initial slider value (in code) to be whatever value was set in the storyboard instead of assuming an initial value.
    // This is a variable names slider that is connected to the UISLider object
    @IBOutlet var slider: UISlider!
    
    var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = lroundf(slider.value)
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
        
        // Will prompt and alert on the screen
        let alert = UIAlertController (title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
       
        
        currentValue = lroundf(slider.value)
    }

}

