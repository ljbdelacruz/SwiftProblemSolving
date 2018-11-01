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
//let fcObject=FactorialCalculator();
//print(fcObject.Calculate(num: 0))
//print(fcObject.Calculate(num: 1))
//print(fcObject.Calculate(num: 2))
//print(fcObject.Calculate(num: 3))
//print(fcObject.Calculate(num: 4))
//print(fcObject.Calculate(num: 5))
//print(fcObject.Calculate(num: 6))
//print(fcObject.Calculate(num: 7))

//MARK Binary To Decimal (Decimal to Binary)
class BinaryToDecimal{
    static func BtoDC(input:String)->Int{
        var sum=0;
        var index=0;
        var result=0;
        for item in input.reversed() {
            result=index == 0 ? 1 : result * 2;
            sum+=Int(String(item)) == 1 ? result : 0;
            index+=1;
        }
        return sum;
    }
    static func DCToB(number:Int)->String{
        var binary="";
        var sum=number;
        while sum > 0 {
            let data=sum%2;
            sum=sum/2;
            binary.append("\(data)");
        }
        return String(binary.reversed());
    }
    
    
    
}

print(BinaryToDecimal.BtoDC(input: "11111"))
print(BinaryToDecimal.BtoDC(input: "01111"))

print(BinaryToDecimal.DCToB(number: 23));




















