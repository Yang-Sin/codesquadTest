if let input = readLine() {
    print("               B B B")
    print("               B B B")
    print("               B B B")
    
    print("W W W     O O O     G G G     Y Y Y")
    print("W W W     O O O     G G G     Y Y Y")
    print("W W W     O O O     G G G     Y Y Y")
    
    print("               R R R")
    print("               R R R")
    print("               R R R")
    
    print("CUBE> \(input)")
    
    struct movingCube {
        var cube = [[["B", "B", "B"], ["B", "B", "B"], ["B", "B", "B"]], [["W", "W", "W"], ["W", "W", "W"], ["W", "W", "W"]], [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]], [["G", "G", "G"], ["G", "G", "G"], ["G", "G", "G"]], [["Y", "Y", "Y"], ["Y", "Y", "Y"], ["Y", "Y", "Y"]], [["R", "R", "R"], ["R", "R", "R"], ["R", "R", "R"]]]
        
        
        mutating func rotateUCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[0][i][0] = cube2[0][2][i]
                cube[0][i][1] = cube2[0][1][i]
                cube[0][i][2] = cube2[0][0][i]
                cube[1][0][i] = cube2[2][0][i]
                cube[2][0][i] = cube2[3][0][i]
                cube[3][0][i] = cube2[4][0][i]
                cube[4][0][i] = cube2[1][0][i]
            }
        }
        mutating func rotateU_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[0][0][i] = cube2[0][i][2]
                cube[0][1][i] = cube2[0][i][1]
                cube[0][2][i] = cube2[0][i][2]
                cube[1][0][i] = cube2[4][0][i]
                cube[2][0][i] = cube2[1][0][i]
                cube[3][0][i] = cube2[2][0][i]
                cube[4][0][i] = cube2[3][0][i]
            }
        }
    }
}

