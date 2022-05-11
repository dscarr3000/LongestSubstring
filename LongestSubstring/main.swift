import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var chars: [Character: Int] = [:]
    var left = 0
    var right = 0
    var res = 0
    
    while right < s.count {
        let r = s[s.index(s.startIndex, offsetBy: right)]
        chars[r, default: 0] += 1
        
        while chars[r, default: 0] > 1 {
            let l = s[s.index(s.startIndex, offsetBy: left)]
            chars[l, default: 0] -= 1
            left += 1
        }
        
        res = max(res, right - left + 1)
        right += 1
    }
    
    return res
}

print(lengthOfLongestSubstring("abcabca"))

