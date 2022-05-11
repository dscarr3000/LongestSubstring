import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var chars: [Character: Int] = [:]
    var leftIndex = 0
    var res = 0
    
    for (rightIndex, r) in s.enumerated() {
        chars[r, default: 0] += 1
        
        while chars[r, default: 0] > 1 {
            let l = s[s.index(s.startIndex, offsetBy: leftIndex)]
            chars[l, default: 0] -= 1
            leftIndex += 1
        }
        
        res = max(res, rightIndex - leftIndex + 1)
    }
    
    return res
}

print(lengthOfLongestSubstring("abcabca"))

