//
//  ViewController.swift
//  StoryMaster
//
//  Created by Samed Karakuş on 24.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        UIView.animate(withDuration: 0.3, animations: { [self] in
            storyLabel.alpha = 0
            choice1Button.alpha = 0
            choice2Button.alpha = 0
        }, completion: { [self] _ in
            updateUI()
            UIView.animate(withDuration: 0.3) { [self] in
                storyLabel.alpha = 1
                choice1Button.alpha = 1
                choice2Button.alpha = 1
            }
        })
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        setButtonCornerRadius(button: choice1Button, radius: 10)
         setButtonCornerRadius(button: choice2Button, radius: 10)
    
        let isDead = storyBrain.deathSituation()
        
        if isDead {
            choice1Button.isHidden = true
        } else {
            choice1Button.isHidden = false
        }
    }
    
    func setButtonCornerRadius(button: UIButton, radius: CGFloat) {
        button.layer.cornerRadius = radius
        button.clipsToBounds = true
    }
}
