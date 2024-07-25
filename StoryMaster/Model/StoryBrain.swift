//
//  StoryBrain.swift
//  StoryMaster
//
//  Created by Samed Karakuş on 24.07.2024.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let firstStoryDetails = [
        Story(story: "Ormanın derinliklerinde gizemli bir mağara buldunuz.", choice1: "Mağaraya gir", choice2: "Ormanda kal"),
        Story(story: "Mağaranın içinde eski bir harita buldunuz", choice1: "Haritayı incele", choice2: "Haritayı yok say ve ilerlemeye devam et"),
        Story(story: "Haritada hazine işaretli bir yer buldunuz.", choice1: "Hazineyi kazmaya başla", choice2: "Haritayı sat ve para kazan")
    ]
    
    let secondStoryDetails = [
        Story(story: "Ormanın derinliklerinde gizemli bir mağara buldunuz.", choice1: "Mağaraya gir", choice2: "Ormanda kal"),
        Story(story: "Ormanda ilerlerken gece yarısı bir köprünün üstünde gizemli bir ışık gördünüz.", choice1: "Işığa doğru yürü", choice2: "Geri dön ve güvenli bir yere git"),
        Story(story: "Mağaranın derinliklerinde sihirli bir kitaba rastladınız.", choice1: "Kitabı oku", choice2: "Kitabı yanına al ve mağaradan çık")
    ]
    
    func getStoryText() -> String {
        return firstStoryDetails[storyNumber].story
    }
    
    func getChoice1Text() -> String {
        return firstStoryDetails[storyNumber].choice1
    }
    
    func getChoice2Text() -> String {
        return secondStoryDetails[storyNumber].choice2
    }
    
    mutating func nextStory() {
        if storyNumber < firstStoryDetails.count {
            storyNumber += 1
        } else {
            storyNumber = 0
        }
    }
}
