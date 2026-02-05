import UIKit

/*
 switch value matching{
    case pattern1:
        statement
    case pattern2, pattern3:
        statement
    default:
        statement or break
 }
 
 1. value matching
 2. range matching
 */

//1. value matching
let number = 5
switch number{
case 5:
    print("five")
case 10:
    print("ten")
default:
//    print("not five or ten")
    break
}

//2. Range matching
1...10 //closed range operator
1..<10 // half-open range operator
(1...10).reversed()

switch number{
case 1...100:
    print("passed")
default:
    print("failed")
}
