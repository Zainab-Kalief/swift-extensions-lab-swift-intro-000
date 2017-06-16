//
//  Extensions.swift
//  Extensions
//
//  Created by Wura Alese on 6/16/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return  self.lowercased()
    }
    func shout() -> String {
        return self.uppercased()
    }
    var pigLatin: String {
        
        //how do I answer qst 8
        if self.characters.count == 1 {
            return self
        } else {
            
            var sentence = ""
            
            let sentenceArray = self.lowercased().characters.split{$0 == " "}.map(String.init)
            
            for value in sentenceArray {
                
                var word = value
                let first = word[word.startIndex]
                word.append(first)
                word.append("ay")
                word.remove(at: word.startIndex)
                
                sentence += "\(word.capitalized) "
            }
            
           return sentence
        }
    }
    var points: Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u","y"]
        let consonants: [Character] = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
        
        var point = 0
        
        func countVowels(word: String) -> Int {
            for xter in word.lowercased().characters {
                if vowels.contains(xter) {
                    point += 2
                } else if consonants.contains(xter){
                    point += 1
                } else {
                    point += 0
                }
            }
            if word.characters.isEmpty {
                return 0
            } else {
                return point
            }
        }
        return  countVowels(word: self)
    }
    
    var unicornLevel: String {
        
        var sentence = ""
        let sentenceArray = self.lowercased().characters.split{$0 == " "}.map(String.init)
        
        for value in sentenceArray {
            var word = value
        sentence += "\(String(repeating: "🦄", count: word.characters.count)) "
        }
      return sentence 
    }
    
}



extension Int {
    func half() -> Int {
        return  self / 2
    }
    func isDivisible(by number: Int)  -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    var squared: Int {
        return self * self
    }
    var halved: Int {
        return half()
    }
}


