if let input = readLine() {
    print("R R W")
    print("G C W")
    print("G B B")
    print("CUBE> \(input)")

    let a = input.map{String($0)}
    let inputArray = a.map{ $0 == "\'" ? $0+" " : $0}.map{ $0 == "U" || $0 == "L" || $0 == "B" || $0 == "R" ? " "+$0 : $0}.joined().split(separator: " ")
    var movingCube = MovingCube()
    
    struct MovingCube {

        var cube = [["R", "R", "W"], ["G", "C", "W"], ["G", "B", "B"]]

        mutating func upSide(direction: String) {
            var group = [cube[0][0], cube[0][1], cube[0][2]]
            let group2 = group

            if direction == "U'" {
                for i in 0...2 {
                    if i-1 < 0 {
                        group[i] = group2[((i-1)+group.count) % 3]
                    } else {
                        group[i] = group2[(i-1) % 3]
                    }
                }
            } else {
                for i in 0...2 {
                    group[i] = group2[(i+1) % 3]
                }
            }
            cube[0][0] = group[0]
            cube[0][1] = group[1]
            cube[0][2] = group[2]

        }

        mutating func bottomSide(direction: String) {
            var group = [cube[2][0], cube[2][1], cube[2][2]]
            let group2 = group

            if direction == "B" {
                for i in 0...2 {
                    if i-1 < 0 {
                        group[i] = group2[((i-1)+group.count) % 3]
                    } else {
                        group[i] = group2[(i-1) % 3]
                    }
                }
            } else {
                for i in 0...2 {
                    group[i] = group2[(i+1) % 3]
                }
            }
            cube[2][0] = group[0]
            cube[2][1] = group[1]
            cube[2][2] = group[2]
        }

        mutating func leftSide(direction: String) {
            var group = [cube[0][0], cube[1][0], cube[2][0]]
            let group2 = group

            if direction == "L" {
                for i in 0...2 {
                    if i-1 < 0 {
                        group[i] = group2[((i-1)+group.count) % 3]
                    } else {
                        group[i] = group2[(i-1) % 3]
                    }
                }
            } else {
                for i in 0...2 {
                    group[i] = group2[(i+1) % 3]
                }
            }
            cube[0][0] = group[0]
            cube[1][0] = group[1]
            cube[2][0] = group[2]
        }

        mutating func rightSide(direction: String) {
            var group = [cube[0][2], cube[1][2], cube[2][2]]
            let group2 = group
            if direction == "R'" {
                for i in 0...2 {
                    if i-1 < 0 {
                        group[i] = group2[((i-1)+group.count) % 3]
                    } else {
                        group[i] = group2[(i-1) % 3]
                    }
                }
            } else {
                for i in 0...2 {
                    group[i] = group2[(i+1) % 3]
                }
            }
            cube[0][2] = group[0]
            cube[1][2] = group[1]
            cube[2][2] = group[2]
        }
    }
    
    for i in inputArray {
        switch i {
        case "L":
            print("L")
            movingCube.leftSide(direction: "L")
        case "L\'":
            print("L\'")
            movingCube.leftSide(direction: "L\'")
        case "R":
            print("R")
            movingCube.rightSide(direction: "R")
        case "R\'":
            print("R\'")
            movingCube.rightSide(direction: "R\'")
        case "U":
            print("U")
            movingCube.upSide(direction: "U")
        case "U\'":
            print("U\'")
            movingCube.upSide(direction: "U\'")
        case "B":
            print("B")
            movingCube.bottomSide(direction: "B")
        case "B\'":
            print("B\'")
            movingCube.bottomSide(direction: "B\'")
        case "Q":
            print("Bye~")
        default:
            break
        }
        print("\(movingCube.cube[0][0]) \(movingCube.cube[0][1]) \(movingCube.cube[0][2])")
        print("\(movingCube.cube[1][0]) \(movingCube.cube[1][1]) \(movingCube.cube[1][2])")
        print("\(movingCube.cube[2][0]) \(movingCube.cube[2][1]) \(movingCube.cube[2][2])")
    }
}
