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
        choice1Button.setTitle("Mağaraya gir", for: .normal)
        choice2Button.setTitle("Ormanda kal", for: .normal)
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        guard let choiceTitle = sender.currentTitle else {
            print("Error: sender.currentTitle is nil")
            return
        }
        
        storyBrain.nextStory(choiceTitle)
        
        UIView.animate(withDuration: 0.3, animations: {
            self.choice1Button.alpha = 0
            self.choice2Button.alpha = 0
            self.storyLabel.alpha = 0
        }) { _ in
            self.updateUI()
            
            UIView.animate(withDuration: 0.3) {
                self.choice1Button.alpha = 1
                self.choice2Button.alpha = 1
                self.storyLabel.alpha = 1
            }
        }
    }
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.getStoryText()
        
        let mediumFont = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        let choice1Title = storyBrain.getChoice1()
        let choice1AttributedTitle = NSAttributedString(string: choice1Title, attributes: [.font: mediumFont])
        choice1Button.setAttributedTitle(choice1AttributedTitle, for: .normal)
        
        let choice2Title = storyBrain.getChoice2()
        let choice2AttributedTitle = NSAttributedString(string: choice2Title, attributes: [.font: mediumFont])
        choice2Button.setAttributedTitle(choice2AttributedTitle, for: .normal)
    }
}
