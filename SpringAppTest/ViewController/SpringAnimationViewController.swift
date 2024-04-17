//
//  ViewController.swift
//  SpringAppTest
//
//  Created by Влад Руденко on 17.04.2024.
//

import UIKit
import SpringAnimation

final class SpringAnimationViewController: UIViewController {
    
    //MARK: - Properties
    private var animationParameters = AnimationsParameters.randomParameters
    
    //MARK: - UI Elements
    @IBOutlet var springView: SpringView!
    @IBOutlet var animationsDescribeLabel: SpringLabel! {
        didSet {
            animationsDescribeLabel.text = animationParameters.textForLabel
        }
    }
    
    //MARK: - UI Elements Function
    @IBAction func playAnimation(_ sender: SpringButton) {
        animationsDescribeLabel.animation = "flash"
        animationsDescribeLabel.duration = 0.2
        animationsDescribeLabel.text = animationParameters.textForLabel
        animationsDescribeLabel.animate()
        
        springView.animateNext { [self] in
            springView.animation = animationParameters.animation
            springView.curve = animationParameters.curve
            springView.force = animationParameters.force
            springView.delay = animationParameters.delay
            springView.duration = animationParameters.duration
            springView.animate()
            
            animationParameters = AnimationsParameters.randomParameters
            
            sender.setTitle("Run \(animationParameters.animation)", for: .normal)
        }
    }

}

