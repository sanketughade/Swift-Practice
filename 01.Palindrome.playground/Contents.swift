import UIKit

extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
}

func isPalindrome(_ str: String) -> Bool {
    if str.isEmpty || str.trim().isEmpty {
        return false
    }
    
    var leftIndex = 0
    var rightIndex = str.count - 1
    
    while (leftIndex < rightIndex) {
        let leftChar = str[str.index(str.startIndex, offsetBy: leftIndex)]
        let rightChar = str[str.index(str.startIndex, offsetBy: rightIndex)]
        
        if leftChar != rightChar {
            return false
        }
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    return true;
}

//Palindromes
print("racecar is a plaindrome:\(isPalindrome("racecar"))")
print("madam is a plaindrome:\(isPalindrome("madam"))")
print("a is a plaindrome:\(isPalindrome("a"))")
print("No 'x' in Nixon is a plaindrome:\(isPalindrome("No 'x' in Nixon"))")

//Non-Plaindromes
print("hello is a plaindrome:\(isPalindrome("hello"))")
print("Palindrome is a plaindrome:\(isPalindrome("Palindrome"))")
print("Swift is a plaindrome:\(isPalindrome("Swift"))")
print("123456 is a plaindrome:\(isPalindrome("123456"))")
