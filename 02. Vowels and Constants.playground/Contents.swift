import UIKit

func getVowelsAndConstantsCount(from string: String) -> (vowels: Int, constants: Int) {
    var vowelsCount = 0
    var constantsCount = 0
    
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    
    for character in string.lowercased() {
        if vowels.contains(character) {
            vowelsCount += 1
        } else if character.isLetter {
            constantsCount += 1
        }
    }
    return (vowelsCount, constantsCount)
}

let name = "Sanket"
let (vowels, constants) = getVowelsAndConstantsCount(from: name)
print("\(name) has \(vowels) vowels and \(constants) constants.")
