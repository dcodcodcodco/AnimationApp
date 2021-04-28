//
//  DataManager.swift
//  AnimationApp
//
//  Created by Alex on 28.04.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    func getRandomAnimation() -> Animation {
        let animation: Animation = Animation()
        animation.force = Float.random(in: 1...2)
        animation.duration = Float.random(in: 1...2)
        animation.animationType = AnimationPreset.allCases.randomElement()!.rawValue
        
        return animation
    }
    
    private init() {}
}

public enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

