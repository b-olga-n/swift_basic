import UIKit

//Первая задача

var a = 1
var b = -6
var c = 9

if (a != 0) {
    if (b != 0) && (c != 0){
        let d = (b*b-4*a*c)
        if (d<0) {
            print("Нет корня")
        } else if (d == 0) {
            let x = (-b)/2*a
            print("Корень: \(x)")
        } else if (d>0) {
            let x1: Double = ((Double(-b))+sqrt(Double(d)))/2*Double(a)
            let x2: Double = ((Double(-b))-sqrt(Double(d)))/2*Double(a)
            print("Первый корень: \(x1), второй корень: \(x2)")
        }
    }
} else { print ("Корень нельзя вычеслить, если a=0") }


//Вторая задача

var katet1:Double = 3
var katet2:Double = 4

let hypotenuse:Double = sqrt(katet1*katet1+katet2*katet2)
let perimetr:Double = hypotenuse+katet2+katet1
let square:Double = (katet2*katet1)/2

print("Гипотенуза треугольника равна", hypotenuse )
print("Периметр треугольника равна", perimetr)
print("Площадь треугольника равна", square)


// Третья задача

var depositAmount: Float = 500.0
let annualPercent: Float = 3.0
var period = 1
while period <= 5 {
    let AnnualIncome = depositAmount / 100.0 * annualPercent
    depositAmount = depositAmount + AnnualIncome
    period += 1
}
print("Сумма вклада через", (period), "лет равна", (depositAmount))



