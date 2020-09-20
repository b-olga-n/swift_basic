import UIKit

// задание 1. Написать функцию, которая определяет, четное число или нет

var evens = [Int]()
for i in 1...100 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
print(evens)

// задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

var oddNum = [Int]()
for i in 1...100 {
    if i % 3 == 0 {
        oddNum.append(i)
    }
}
print("\(oddNum) делятся без остатка на 3")

// задание 3. Создать возрастающий массив из 100 чисел.

var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)

// задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

let toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 != 0}
print("данный массив должен быть удален \(toDelete)")

// задание 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func fibonacciA(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciA(100))

// задание 6. Перечитано N-раз. Понимания 0, почитала в википедии про Эратосфена.
