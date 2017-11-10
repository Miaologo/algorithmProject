//: [Previous](@previous)

import Foundation

func isValid(_ s: String) -> Bool {
    
    if s.characters.count % 2 != 0 {
        return false
    }
    var tempStr = ""
    for (index, chara) in s.characters.enumerated() {
        if String(chara) == "(" || String(chara) == "[" || String(chara) == "{" {
            tempStr.append(chara)
        } else {
            guard let left = tempStr.characters.last else {
                return false
            }
            if left == "(" && chara == ")" || left == "[" && chara == "]" || left == "{" && chara == "}" {
                tempStr.remove(at: tempStr.index(before: tempStr.endIndex))
            } else {
                return false
            }
        }
    }
    return tempStr.characters.count == 0
}
