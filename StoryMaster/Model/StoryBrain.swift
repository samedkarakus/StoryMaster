//
//  StoryBrain.swift
//  StoryMaster
//
//  Created by Samed Karakuş on 24.07.2024.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
        Story(story: "Ormanın derinliklerinde gizemli bir mağara buldunuz.", choice1: "Mağaraya gir", choice1Destination: 1, choice2: "Ormanda kal", choice2Destination: 2),
        Story(story: "Mağaranın içinde eski bir harita buldunuz", choice1: "Haritayı incele", choice1Destination: 3, choice2: "Haritayı yok say ve ilerlemeye devam et", choice2Destination: 4),
        Story(story: "Ormanda ilerlerken gece yarısı bir köprünün üstünde gizemli bir ışık gördünüz.", choice1: "Işığa doğru yürü", choice1Destination: 5, choice2: "Geri dön ve güvenli bir yere git", choice2Destination: 6),
        Story(story: "Haritada hazine işaretli bir yer buldunuz.", choice1: "Hazineyi kazmaya başla", choice1Destination: 7, choice2: "Haritayı sat ve para kazan", choice2Destination: 8),
        Story(story: "Mağaranın derinliklerinde sihirli bir kitaba rastladınız.", choice1: "Kitabı oku", choice1Destination: 9, choice2: "Kitabı yanına al ve mağaradan çık", choice2Destination: 10),
        Story(story: "Işığa yürüdüğünüzde eski bir köy buldunuz. Köylüler sihirli yeteneklere sahip.", choice1: "Köyde kal ve sihir öğren", choice1Destination: 11, choice2: "Köyden çık ve maceranı devam ettir", choice2Destination: 12),
        Story(story: "Geri döndüğünüzde bir kasırga hızla şehre yaklaşıyor.", choice1: "Evde kal ve güvenli bir yer bul", choice1Destination: 13, choice2: "Şehri terk et", choice2Destination: 14),
        Story(story: "Hazineyi kazarken bir define avcısı ile karşılaştınız.", choice1: "Define avcısıyla savaş", choice1Destination: 15, choice2: "Onunla anlaşma yap ve hazineyi paylaş", choice2Destination: 15),
        Story(story: "Haritayı satıp para kazandınız ama parayı çalmak isteyen haydutlarla karşılaştınız.", choice1: "Haydutlarla savaş", choice1Destination: 15, choice2: "Parayı ver ve kaç", choice2Destination: 15),
        Story(story: "Kitabı okuduğunuzda sihirli güçler kazandınız. Şimdi karşınıza dev bir yaratık çıktı.", choice1: "Yaratıkla savaş", choice1Destination: 15, choice2: "Yaratıktan kaç", choice2Destination: 15),
        Story(story: "Kitabı yanınıza aldınız ve mağaradan çıktınız. Ancak bir köprüde eski bir bilgeyle karşılaştınız.", choice1: "Bilgeyle konuş", choice1Destination: 15, choice2: "Bilgeyi geç ve devam et", choice2Destination: 15),
        Story(story: "Köyde sihir öğrendikten sonra, eski bir tapınak keşfettiniz.", choice1: "Tapınağa gir", choice1Destination: 15, choice2: "Tapınağın etrafını keşfet", choice2Destination: 15),
        Story(story: "Köyden ayrıldıktan sonra denizde bir adaya sürüklendiniz.", choice1: "Adada kal ve kaynaklar bul", choice1Destination: 15, choice2: "Denizde kurtarılmayı bekle", choice2Destination: 15),
        Story(story: "Kasırgadan kurtulduktan sonra, evde eski bir sandık buldunuz.", choice1: "Sandığı aç", choice1Destination: 15, choice2: "Sandığı kapalı bırak", choice2Destination: 15),
        Story(story: "Şehri terk ettikten sonra, yeni bir şehre geldiniz ve burada yeni bir hayat kurdunuz.", choice1: "Mutlu son", choice1Destination: 0, choice2: "Baştan Başla", choice2Destination: 0),
        Story(story: "Öldünüz...", choice1: "Yeniden dene", choice1Destination: 0, choice2: "Ormandan gitmeyi dene", choice2Destination: 2)
    ]
    
    mutating func nextStory(_ userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
    mutating func restart(){
        storyNumber = 0
    }
    
    func getStoryText() -> String {
        return stories[storyNumber].story
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
