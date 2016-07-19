//
//  Extensions.swift
//  Extensions
//
//  Created by Ismael Barry on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    var pigLatin : String {
        
        if self.isEmpty || self == "" || self == " "{
            
            return self
            
        } else {
            
            // Copy the incoming instance String to a placeholder String.
            var returnString = self
        
            // Copy each character into an array.
            let eachCharacterArray = self.characters.map { String($0) }
        
            // Check if each word has a last character. This is good if the incoming string is empty.
            if let firstCharacter = eachCharacterArray.first {
            
                // Add first letter of the incoming instance String to the end of the placeholder String.
                returnString = returnString+"\(firstCharacter)"
            
                // Add "ay" to the end of the placeholder String
                returnString = returnString+"ay"
            }
        
            return returnString
            
        }
    }
    
    var points : Int {
        
        var counter : Int = 0
        
        // Lowercase the String:
        let lowercase = self.lowercaseString
        
        // Remove all the spaces from the String:
        let spaceless = lowercase.stringByReplacingOccurrencesOfString(" ", withString: "")
        
        // Create an array of vowels to check the incoming String against:
        let vowels = ["a", "e", "i", "o", "u"]
        
        // Create a numbers array to check the incoming String against:
        let number = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        // Loop through the each letter in the incoming String to see if it matches the array of vowels and numbers.
        for character in spaceless.characters {
            
            if vowels.contains(String(character)) {
                counter = counter + 2
            } else if !vowels.contains(String(character)) && !number.contains(String(character)){
                counter = counter + 1
            } else if String(character) == "" || String(character) == " " {
                counter = counter + 0
            } else {
                counter = counter + 0
            }
            
        }
        return counter
        
    }
    
    var unicornLevel : String {
        
        var returnString : String = ""
        
        for characters in self.characters {
            
            if characters != " " {
                
                returnString = returnString + "🦄"
            }
            
        }
        
        return returnString
        
    }
    
    func whisper() -> String {
        
        return self.lowercaseString
        
    }
    
    func shout() -> String {
        
        return self.uppercaseString
        
    }
    
}

extension Int {
    
    // Halves itself by calling a function:
    var halved : Int { return self.half() }
    
    // Halves itself:
    func half() -> Int {
        
        return self / 2
    }
    
    // To find out if the recipient Int is divisible by the argument:
    func isDivisibleBy(argument : Int) -> Bool {
        
        if (self % argument) == 0 {
            
            return true
        
        } else {
            
            return false
        
        }
        
    }
    
    // Squares itself:
    func squared() -> Int {
        
        return self * self
        
    }
}
