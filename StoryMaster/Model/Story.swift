//
//  Story.swift
//  StoryMaster
//
//  Created by Samed Karakuş on 24.07.2024.
//

import Foundation

struct Story {
    let story : String
    let choice1 : String
    let choice2 : String
    
    init(story: String, choice1: String, choice2: String) {
        self.story = story
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
