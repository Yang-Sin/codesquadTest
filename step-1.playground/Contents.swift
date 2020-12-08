func wordPush( word:String, number:Int, direction: String) -> String {
    var wordDict = [Int:String]()
    var wordArray = word.map{String($0)}
    var answer = [String]()
    
    if number%wordArray.count == 0 {
        return wordArray.joined()
    }
    
    if direction.uppercased() == "R" {
        for i in 0..<wordArray.count {
             
            if i - number < 0 {
                wordDict[i] = wordArray[(i-number) % wordArray.count + wordArray.count]
            } else {
                wordDict[i] = wordArray[(i-number) % wordArray.count]
            }
        }
    } else if direction.uppercased() == "L" {
        for i in 0..<wordArray.count {
            if i + number > 0 {
                wordDict[i] = wordArray[(i+number) % wordArray.count]
            } else {
                wordDict[i] = wordArray[(i+number) % wordArray.count + wordArray.count]
            }
        }
    }
    for (key, value) in wordDict.sorted{ $0 < $1 } {
        answer.append(value)
    }
    return answer.joined()
}


