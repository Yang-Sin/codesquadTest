import Foundation

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
    
    let a = input.map{String($0)}
    let inputArray = a.map{ $0 == "\'" ? $0+" " : $0}.map{ $0 == "U" || $0 == "L" || $0 == "F" || $0 == "R" || $0 == "B" || $0 == "D" ? " "+$0 : $0}.joined().split(separator: " ")
    var movingCube = MovingCube()

    func rotateCube() {
        for i in inputArray {
            switch i {
            case "U":
                movingCube.rotateUCube()
                print("\(i)")
            case "U\'":
                movingCube.rotateU_Cube()
                print("\(i)")
            case "L":
                movingCube.rotateLCube()
                print("\(i)")
            case "L\'":
                movingCube.rotateL_Cube()
                print("\(i)")
            case "F":
                movingCube.rotateFCube()
                print("\(i)")
            case "F\'":
                movingCube.rotateF_Cube()
                print("\(i)")
            case "R":
                movingCube.rotateRCube()
                print("\(i)")
            case "R\'":
                movingCube.rotateR_Cube()
                print("\(i)")
            case "B":
                movingCube.rotateBCube()
                print("\(i)")
            case "B\'":
                movingCube.rotateB_Cube()
                print("\(i)")
            case "D":
                movingCube.rotateDCube()
                print("\(i)")
            case "D\'":
                movingCube.rotateD_Cube()
                print("\(i)")
            default:
                break
            }
            let cube = movingCube.cube
            print("               \(cube[0][0][0]) \(cube[0][0][1]) \(cube[0][0][2])")
            print("               \(cube[0][1][0]) \(cube[0][1][1]) \(cube[0][1][2])")
            print("               \(cube[0][2][0]) \(cube[0][2][1]) \(cube[0][2][2])")
            
            print("\(cube[4][0][0]) \(cube[4][0][1]) \(cube[4][0][2])     \(cube[1][0][0]) \(cube[1][0][1]) \(cube[1][0][2])     \(cube[2][0][0]) \(cube[2][0][1]) \(cube[2][0][2])     \(cube[3][0][0]) \(cube[3][0][1]) \(cube[3][0][2])")
            print("\(cube[4][1][0]) \(cube[4][1][1]) \(cube[4][1][2])     \(cube[1][1][0]) \(cube[1][1][1]) \(cube[1][1][2])     \(cube[2][1][0]) \(cube[2][1][1]) \(cube[2][1][2])     \(cube[3][1][0]) \(cube[3][1][1]) \(cube[3][1][2])")
            print("\(cube[4][2][0]) \(cube[4][2][1]) \(cube[4][2][2])     \(cube[1][2][0]) \(cube[1][2][1]) \(cube[1][2][2])     \(cube[2][2][0]) \(cube[2][2][1]) \(cube[2][2][2])     \(cube[3][2][0]) \(cube[3][2][1]) \(cube[3][2][2])")
            
            print("               \(cube[5][0][0]) \(cube[5][0][1]) \(cube[5][0][2])")
            print("               \(cube[5][1][0]) \(cube[5][1][1]) \(cube[5][1][2])")
            print("               \(cube[5][2][0]) \(cube[5][2][1]) \(cube[5][2][2])")
        }
    }
    
    
    struct MovingCube {
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
                cube[0][2][i] = cube2[0][i][0]
                cube[1][0][i] = cube2[4][0][i]
                cube[2][0][i] = cube2[1][0][i]
                cube[3][0][i] = cube2[2][0][i]
                cube[4][0][i] = cube2[3][0][i]
            }
        }
        mutating func rotateLCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[4][i][0] = cube2[4][2][i]
                cube[4][i][1] = cube2[4][1][i]
                cube[4][i][2] = cube2[4][0][i]
                cube[0][0][i] = cube2[3][0][i]
                cube[1][0][i] = cube2[0][0][i]
                cube[3][0][i] = cube2[5][0][i]
                cube[5][0][i] = cube2[1][0][i]
            }
        }
        mutating func rotateL_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[4][0][i] = cube2[4][i][2]
                cube[4][1][i] = cube2[4][i][1]
                cube[4][2][i] = cube2[4][i][0]
                cube[0][0][i] = cube2[1][0][i]
                cube[1][0][i] = cube2[5][0][i]
                cube[3][0][i] = cube2[0][0][i]
                cube[5][0][i] = cube2[3][0][i]
            }
        }
        mutating func rotateFCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[1][i][0] = cube2[1][2][i]
                cube[1][i][1] = cube2[1][1][i]
                cube[1][i][2] = cube2[1][0][i]
                cube[0][0][i] = cube2[4][0][i]
                cube[2][0][i] = cube2[0][0][i]
                cube[4][0][i] = cube2[5][0][i]
                cube[5][0][i] = cube2[2][0][i]
            }
        }
        mutating func rotateF_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[1][0][i] = cube2[1][i][2]
                cube[1][1][i] = cube2[1][i][1]
                cube[1][2][i] = cube2[1][i][0]
                cube[0][0][i] = cube2[2][0][i]
                cube[2][0][i] = cube2[5][0][i]
                cube[4][0][i] = cube2[0][0][i]
                cube[5][0][i] = cube2[4][0][i]
            }
        }
        mutating func rotateRCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[2][i][0] = cube2[2][2][i]
                cube[2][i][1] = cube2[2][1][i]
                cube[2][i][2] = cube2[2][0][i]
                cube[0][0][i] = cube2[1][0][i]
                cube[1][0][i] = cube2[5][0][i]
                cube[3][0][i] = cube2[0][0][i]
                cube[5][0][i] = cube2[3][0][i]
            }
        }
        mutating func rotateR_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[2][0][i] = cube2[2][i][2]
                cube[2][1][i] = cube2[2][i][1]
                cube[2][2][i] = cube2[2][i][0]
                cube[0][0][i] = cube2[3][0][i]
                cube[1][0][i] = cube2[0][0][i]
                cube[3][0][i] = cube2[5][0][i]
                cube[5][0][i] = cube2[1][0][i]
            }
        }
        mutating func rotateBCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[3][i][0] = cube2[3][2][i]
                cube[3][i][1] = cube2[3][1][i]
                cube[3][i][2] = cube2[3][0][i]
                cube[0][0][i] = cube2[2][0][i]
                cube[2][0][i] = cube2[5][0][i]
                cube[4][0][i] = cube2[0][0][i]
                cube[5][0][i] = cube2[4][0][i]
            }
        }
        mutating func rotateB_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[3][0][i] = cube2[3][i][2]
                cube[3][1][i] = cube2[3][i][1]
                cube[3][2][i] = cube2[3][i][0]
                cube[0][0][i] = cube2[4][0][i]
                cube[2][0][i] = cube2[0][0][i]
                cube[4][0][i] = cube2[5][0][i]
                cube[5][0][i] = cube2[2][0][i]
            }
        }
        mutating func rotateDCube() {
            let cube2 = cube
            for i in 0...2 {
                cube[5][i][0] = cube2[5][2][i]
                cube[5][i][1] = cube2[5][1][i]
                cube[5][i][2] = cube2[5][0][i]
                cube[1][0][i] = cube2[4][0][i]
                cube[2][0][i] = cube2[1][0][i]
                cube[3][0][i] = cube2[2][0][i]
                cube[4][0][i] = cube2[3][0][i]
            }
        }
        mutating func rotateD_Cube() {
            let cube2 = cube
            for i in 0...2 {
                cube[5][0][i] = cube2[5][i][2]
                cube[5][1][i] = cube2[5][i][1]
                cube[5][2][i] = cube2[5][i][0]
                cube[1][0][i] = cube2[2][0][i]
                cube[2][0][i] = cube2[3][0][i]
                cube[3][0][i] = cube2[4][0][i]
                cube[4][0][i] = cube2[1][0][i]
            }
        }
    }
    rotateCube()
}

