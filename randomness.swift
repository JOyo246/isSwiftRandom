        var winCountInt = 0
        var winCountString = 0
        var tieCount = 0
        
        for _ in 1...100 {

            let stringList = ["This is a long string","This is a verrrrrryyy long string","This is a verrrrrryyy longgggggggggggg string This is a verrrrrryyy longgggggggggggg string This is a verrrrrryyy longgggggggggggg string This is a verrrrrryyy longgggggggggggg string"]
            var stringData: [String] = []
            for _ in 1...10000 {
                stringData.append(stringList.randomElement()!)
            }

            var longestConsecutiveChain = 0
            var longestConsecutiveChainString = "string"
            var lastElement = "string"
            var currentChain = 0

            for item in stringData {
                if item == lastElement {
                    currentChain += 1
                } else {
                    currentChain = 0
                }
                if currentChain > longestConsecutiveChain{
                    longestConsecutiveChain = currentChain
                    longestConsecutiveChainString = item
                }
                
                lastElement = item
            }
            print("Strings")
            print("Data Set Length: \(stringData.count)")
            print("Longest chain string: \(longestConsecutiveChainString)")
            print("Longest chain count: \(longestConsecutiveChain)")



            var intData: [Int] = []
            for _ in 1...10000 {
                intData.append(Int.random(in: 1...3))
            }

            var longestConsecutiveIntChain = 0
            var longestConsecutiveIntChainInt = 0
            var lastIntElement = 0
            var currentIntChain = 0

            for item in intData {
                if item == lastIntElement {
                    currentIntChain += 1
                } else {
                    currentIntChain = 0
                }
                if currentIntChain > longestConsecutiveIntChain{
                    longestConsecutiveIntChain = currentIntChain
                    longestConsecutiveIntChainInt = item
                }
                
                lastIntElement = item
            }
            print("\nIntegers")
            print("Data Set Length: \(intData.count)")
            print("Longest chain int: \(longestConsecutiveIntChainInt)")
            print("Longest chain count: \(longestConsecutiveIntChain)")
            
            if longestConsecutiveIntChain > longestConsecutiveChain {
                print("Int longer")

                winCountInt += 1
                
            } else if longestConsecutiveIntChain < longestConsecutiveChain  {
                print("String longer")
                winCountString += 1
            } else {
                print("TIE")
                tieCount += 1
            }
            
        }
        print("Win count strings \(winCountString)")
        print("Win count ints \(winCountInt)")
        print("Ties \(tieCount)")
