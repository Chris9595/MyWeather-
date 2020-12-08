//
//  ViewController.swift
//  MyWeather
//
//  Created by spirit95 on 07/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var currentCityTemp: UILabel!
    @IBOutlet weak var currentDate: UILabel!
    @IBOutlet weak var specialBG: UIImageView!
    
    
    
    
    // Constants
    
    
    
    // Variables
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        applyEffect()
        
    }
    
    //This function is used to apply the special effect on particular UI. The BG move when you move your phone
    func applyEffect() {
        specialEffect(view: specialBG, intensity: 45)
    }
    
    // This function creates the special effect of parallax (the point of observation)
    
    // Parameters:
    // view: UIView for UIButton, UIImage ...
    // intensity: Intensity at which the view will move
    func specialEffect(view: UIView, intensity: Double) {
        let horizontalMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontalMotion.minimumRelativeValue = -intensity
        horizontalMotion.maximumRelativeValue = intensity
        
        let verticalMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        verticalMotion.minimumRelativeValue = -intensity
            verticalMotion.maximumRelativeValue = intensity
        
        let movement  = UIMotionEffectGroup()
        movement.motionEffects = [horizontalMotion, verticalMotion]
        view.addMotionEffect(movement)
    }


}

