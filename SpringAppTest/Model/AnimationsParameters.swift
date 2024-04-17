//
//  Animations.swift
//  SpringAppTest
//
//  Created by Влад Руденко on 17.04.2024.
//

import Foundation

struct AnimationsParameters {
    
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var textForLabel: String {
        """
        Animation: \(animation)
        Curve: \(curve)
        Force: \(String(format:"%.02f", force))
        Duration: \(String(format:"%.02f", duration))
        Delay: \(String(format:"%.02f", delay))
        """
    }
    
    static var randomParameters: AnimationsParameters {
        AnimationsParameters(
            animation: DataStore.shared.presets.randomElement() ?? "pop",
            curve: DataStore.shared.curves.randomElement() ?? "easeIn",
            force: CGFloat.random(in: 0.8...1.5),
            duration: CGFloat.random(in: 0.75...1.25),
            delay: CGFloat.random(in: 0.9...1.1))
    }
    
}


