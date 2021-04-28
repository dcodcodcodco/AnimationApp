//
//  Animations.swift
//  AnimationApp
//
//  Created by Alex on 28.04.2021.
//

class EmptyAnimation {
    
    var animationType: String = ""
    var force: Float = 0.0
    var duration: Float = 0.0
 
    init() {}
}

class Animations {
    
    static let shared = Animations()
    
    func getRandomAnimation() -> EmptyAnimation {
        let animation: EmptyAnimation = EmptyAnimation()
        animation.force = Float.random(in: 1...2)
        animation.duration = Float.random(in: 1...2)
        animation.animationType = DataManager.AnimationPreset.allCases.randomElement()!.rawValue
        
        return animation
    }
    
    private init() {}
}
