import Foundation

// Complete the sockMerchant function below.
// n = 9
// ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
// O/P 3
func sockMerchant(n: Int, ar: [Int]) -> Int {
    /*
    1. Create dict with key as sock type or unique arr[i]
    2. Count keys which have even values
    */
    var dict: [Int: Int] = [:]
    var pairs = 0
    for key in ar {
        if var val = dict[key] {
            val += 1
            if val % 2 == 0 {
                pairs += 1
            }
            dict.updateValue(val, forKey: key)
        } else {
            dict[key] = 1
        }
    }
    
    return pairs
}

print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
