import UIKit

//MARK: -Searching Problem
class SearchingProblem{
    var myInputs=Array<Int>();
    func CheckInputDidAppear(input:Int)->(String){
        if !myInputs.isEmpty{
            for (index, data) in self.myInputs.enumerated() {
                if data == input{
                    return (String(input)+" already inputed at index "+String(index));
                }
            }
            self.myInputs.append(input);
        }else{
            self.myInputs.append(input);
        }
        return (String(input));
    }
}
//let spObj=SearchingProblem();
//print(spObj.CheckInputDidAppear(input:1))
//print(spObj.CheckInputDidAppear(input:2))
//print(spObj.CheckInputDidAppear(input:3))
//print(spObj.CheckInputDidAppear(input:4))
//print(spObj.CheckInputDidAppear(input:2))
//print(spObj.CheckInputDidAppear(input:3))


//MARK Factorial Calculator
class FactorialCalculator{
    var lastEntered:Int=1;
    func Calculate(num:Int)->String{
        let result=num * lastEntered;
        self.lastEntered = result == 0 ? num > 0 ? num : 1 : result;
        return String(num)+" = "+String(lastEntered);
    }
}
let fcObject=FactorialCalculator();
print(fcObject.Calculate(num: 0))
print(fcObject.Calculate(num: 1))
print(fcObject.Calculate(num: 2))
print(fcObject.Calculate(num: 3))
print(fcObject.Calculate(num: 4))
print(fcObject.Calculate(num: 5))
print(fcObject.Calculate(num: 6))
print(fcObject.Calculate(num: 7))



















