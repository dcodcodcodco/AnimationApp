//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alex on 27.04.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
   
    @IBOutlet weak var animationName: UILabel!
    @IBOutlet weak var animationForce: UILabel!
    @IBOutlet weak var animationDuration: UILabel!
    
    @IBOutlet weak var runAnimationButton: UIButton!
    
    var randomAnimation: Animation = Animation()
    
    override func viewDidLoad() {
        randomAnimation = DataManager.shared.getRandomAnimation();
    }
    
    @IBAction func runAnimationButton(_ sender: SpringButton) {
       
        animationView.animation = randomAnimation.animationType
        animationView.force = CGFloat(randomAnimation.force)
        animationView.duration = CGFloat(randomAnimation.duration)
        animationView.animate()
        
        animationName.text = randomAnimation.animationType
        animationForce.text = String(format: "Force: %.2f", randomAnimation.force)
        animationDuration.text = String(format:"Duration: %.2f", randomAnimation.duration)
        
        randomAnimation = DataManager.shared.getRandomAnimation();
        runAnimationButton.setTitle(randomAnimation.animationType, for: .normal)
       
    }
    
}

