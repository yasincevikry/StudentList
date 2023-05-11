import UIKit

class CalculateSalary{
    func calculate(day :Int) -> Int{
        let workingHour = day * 8
        print(workingHour)
        var salary = 0
        
        if workingHour > 160{
            let overtimeHour = workingHour - 160
            salary = (160 * 10) + (overtimeHour * 20)
        }else{
            salary = workingHour * 10
        }
        return salary
    }
}


let cal = CalculateSalary()
var salary = cal.calculate(day: 28)
print("Your salary is : \(salary)")
