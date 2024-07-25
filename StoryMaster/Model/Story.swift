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
    let choice1Destination : Int
    let choice2 : String
    let choice2Destination : Int
    
    init(story: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.story = story
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
