import UIKit

func name(a: Int, b: Int) -> Int{
    return a + b
}
 // Two common uses of return:
// 1. Early Exit
// 2. Returning a value from a function or a method

class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // method
    func name(a: Int, b: Int) -> Int{
        return a + b
    }
}

func generateRandomNumber() -> Int{
    return Int.random(in: 1 ... 100)
}
generateRandomNumber()

//Unwraapping
let name: String? = "John"

//1. Forced Unwrapping
let display1 = name!
print(display1)

//2. Optional Binding
if let display2 = name{
    print(display2)
}else{
    print("Guest")
}

//3. Nil-Coalescing: provide a default
let display3 = name ?? "Guest"
print(display3)

//Q2.
func currencySymbol(for country: String?) -> String?{
    switch country{
    case "US":
        return "S"
    case "DE":
        return "E"
    case "KR":
        return "W"
    case "JP":
        return "Y"
    default:
        return nil
    }
}

if let cs = currencySymbol(for: "US"){
    print(cs)
}else{
    print("not found")
}

//Q3.
let input: String? = "42.5"

let fu = Double(input!)!
print("Forced Unwrapping - \(fu)")

if let input, let ob = Double(input){
    print("2. Optional Binding - \(ob)")
}else{
    print("Invalid Input")
}

let nc = Double(input ?? "0") ?? 0.0
print("Nil-Coalescing - \(nc)")

//Q4.
let nickname: String? = "SwiftCoder"


