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


