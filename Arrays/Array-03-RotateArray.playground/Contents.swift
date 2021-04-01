/*
 Rotate Array
 */

class Solution {
    func rotateArray1(_ arr: inout[Int], _ k: Int) {
        let limit = arr.count
        for i in 0..<limit {
            let temp = arr[i]
            if i+k < limit {
                arr[i] = arr[i+k]
            } else {
                print(i, temp)
                arr[i-k] = temp
            }
        }
    }
    
    func rotateArray2(_ arr: inout[Int], _ k: Int) {
        var counter = k
        let lastIndex = arr.count - 1
        let firstIndex = 0
        while counter > 0 {
            let last = arr.remove(at: lastIndex)
            arr.insert(last, at: firstIndex)
            counter -= 1
        }
    }
    
    func rotateArray3(_ arr: inout[Int], _ k: Int) {
        // Brute force
        let limit = arr.count
        guard limit > 1 && k < limit else {
            return
        }
        var tempArr: [Int] = []
        for i in limit-k..<limit {
            tempArr.append(arr[i])
        }
        for i in 0...limit - k - 1 {
            tempArr.append(arr[i])
        }
        arr = tempArr
    }
    
    func rotateArray4(_ arr: inout[Int], _ k: Int) {
        // 1. reverse array
        // 2.
    }
}

var arr = [1,2]
Solution().rotateArray2(&arr, 3)
print(arr)
