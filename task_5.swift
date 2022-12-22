import UIKit

// Операторы управления
//Задание 1
//Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
//Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
//Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке «во всех остальных случаях» (default и else).
/*
 import UIKit
 
 var name = "Alex"
 if name == "Alex" {
 print("Привет Alex")
 } else if name == "Anton" {
 print("Привет Антон")
 } else if name == "Sergey" {
 print("Привет Сергей")
 } else {
 print("Вы не являтесь пользователем")
 }
 
 let names = "Anton"
 switch names {
 case "Alex":
 print("Привет Алекс")
 case "Anton":
 print("Привет Антон")
 case "Sergey":
 print("Привет Сергей")
 default:
 print("Вы не являтесь пользователем")
 
 
 
 Задание 2
 У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false
 
 Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
 — если open равно true, то инициализировать "открыто"
 — если open равно false, то инициализировать "закрыто"
 
 var open = false
 if open {
 print("Открыто")
 } else {
 print("Закрыто")
 }
 
 Задание 3
 
 Вам даны три переменные var1, var2 и var3 целочисленного типа Int
 Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений.
 
 var var1 = 11
 var var2 = 32
 var var3 = 15
 
 let result = [var1, var2, var3].max()
 
 Задание 4
 Вы имеете три переменные-кортежа, содержащие координаты точек
 Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин
 
 var (a, b, c): ((Double,Double), (Double,Double), (Double, Double)) = ((1, 1), (1, 3), (3, 1))
 let aB = sqrt ((pow(b.0-a.0, 2)) + (pow(b.1-a.1, 2)))
 let aC = sqrt ((pow(c.0-a.0, 2)) + (pow(c.1-a.1, 2)))
 let bC = sqrt ((pow(c.0-b.0, 2)) + (pow(c.1-b.1, 2)))
 
 var faceBc = (aB + aC) > bC
 var faceAc = (aB + bC) > aC
 var faceAb = (aC + bC) > aB
 
 if faceBc && faceAc && faceAb {
 print("True triangle")
 } else {
 print("False triangle")
 }
 
 Задание 5
 Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
 Покажите решение задачи через конструкцию switch-case
 
 
 var lang = "ru"
 
 var day: [String] = []
 
 switch lang {
 case "ru":
 day = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"]
 break
 case "en":
 day = ["mn", "ts", "wd", "th", "fr", "st", "sn"];
 default:
 break;
 }
 print(day)
 
 Задание 6
 Основано на предыдущем задании
 У вас появилась дополнительная переменная chars, которая может принять два значения "up" и "down"
 Доработайте конструкцию switch-case таким образом, чтобы в зависимости от значения chars массив заполнялся большими или маленькими символами
 
 
 
 var lang = "en"
 var chars = "down"
 var day: [String] = []
 
 switch lang {
 case "ru" where chars == "down":
 day = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"]
 break
 case "ru" where chars == "up":
 day = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"]
 break
 case "en" where chars == "down":
 day = ["mn", "ts", "wd", "th", "fr", "st", "sn"];
 break
 case "en" where chars == "up":
 day = ["MN", "TS", "WD", "TH", "FR", "ST", "SN"];
 break
 default:
 break;
 }
 print(day)
 
 Задание 7
 1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два — это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
 Третий элемент — строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
 3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
 4) Проверьте правильность работы конструкции по для следующих операций:
 
 (3.1, 33, "+")
 (24.9, 22.32, "*")
 (11.3, 5, "/")
 (5, 2.5, "-")
 
 typealias Operation = (operandOne: Double, operandTwo: Double, operation3: Character)
 //2
 let oper: Operation = (operandOne: 12.3, operandTwo: 3.0, operation3: "/")
 //3
 print(oper.1)
 var resultOper: Double = 0
 switch oper {
 case (let a, let b, "+"):
 resultOper = a + b
 case (let a, let b, "-"):
 resultOper = a - b
 case (let a, let b, "/"):
 resultOper = a / b
 case (let a, let b, "*"):
 resultOper = a * b
 case (let a, let b, "/"):
 Oper.1 == 0:
 print("Не делетися")
 default:
 print("Введите корректное значение")
 break
 }
 print(resultOper)
 
 ФУНКЦИИ
 
 Задание 1
 Разработайте функцию, которая принимает на вход значение типа Bool, преобразует его в строку и возвращает. То есть передав true типа Bool должно вернуться "true" типа String, то же самое и для false.
 func myStrock(_ b: Bool) -> String {
 return String(b)
 }
 Задание 3
 Напишите функцию, которая принимает на вход массив типа [Int] и, в случае, если количество элементов > 0, то возвращает целое число — произведение всех элементов переданной коллекции. Если количество элементов = 0, то возвращается 0.
 Пример:
 [1,2,3,4] -> 1 * 2 * 3 * 4 = 24
 
 
 func number(_ a: [Int]) -> Int {
 var result = 0
 if a.count > 0 {
 result = 1
 for i in a {
 result *= i
 }
 }
 return result
 }
 Задание 4
 Используя перегрузку (overloading) создайте две одноименные функции, которые могут принимать два однотипных параметра (Int или Double) и возвращают их произведение
 Пример:
 (4, 5) -> 4 * 5 = 20
 (4.1, 5.2) -> 4.1 * 5.2 = 21.32
 
 func sumNum(_ numOne: Int, _ numTwo: Int) -> Int {
 return numOne * numTwo
 }
 func sumNum(_ NumOne: Double, _ NumTwo: Double) -> Double {
 return NumOne * NumTwo
 }
 print(sumNum(4.1, 5.2))
 print(sumNum(4, 5))
 
 Задание 5
 Напишите функцию, которая принимает на вход целое число и возвращает противоположное ему целое число
 Пример
 -12 -> 12
 32 -> -32

func sumNum(_ numOne: Int) -> Int {
    return (numOne + -numOne) - numOne
}
print(sumNum(-12))

func opposite(_ a: Int) -> Int {
    return -a
}
opposite(-12) //12
opposite(32) //-32
 
 Задание 6
 Напишите функцию, которая производит подсчет стоимости аренды квартиры с учетом следующих условий:
 1. Один день аренды стоит 850 рублей
 2. При аренде от 3 дней вы получаете скидку в размере 550 рублей от общей суммы
 3. При аренде от 7 дней вы получаете скидку в размере 1620 рублей от общей суммы
 Функция должна принимать на вход количество дней, а возвращать итоговую сумму.
 Пример
 funcName(5) -> 3700
 funcName(9) -> 6030

func funcName(_ rentDay: Int) -> Int {
    let Price = 850;
    var resNum: Int = rentDay * Price
    if resNum >= 3 {
        resNum -= 550
        print("Вы выбрали Аренду сроком на \(rentDay) дней. Дополнительно получаете скидку в размере 550 рублей от общей суммы")
    }else if rentDay >= 3 {
        resNum -= 1620
        print("Вы выбрали Аренду сроком на \(rentDay) дней. Дополнительно получаете скидку в размере 1620 рублей от общей суммы")
    }
    return resNum
}
funcName(7)
 
 Задание 7
 Напишите функцию, которая принимает на вход массив типа [Int] и значение Int, проверяет содержится ли целочисленный элемент в массиве и возвращает true или false в зависимости от результата проверки
 Покажите не менее двух способов решения данной задачи
 Пример:
 funcName([1,2,3], 4) -> false
 funcName([2,3,4], 3) -> true

func funcArray(_ numArray: [Int],_ numInt: Int) -> Bool {

    for i in numArray {
        if i == numInt {
            return true
        }
    }
    return false
}
func check2(_ arr: [Int], _ el: Int) -> Bool {
    return arr.contains(el)
 
 Задание 8
 Напишите функцию, которая повторяет заданную строку N раз.
 Функция принимает на вход значение типа String (строку для повторений) и значение типа Int (количество повторений) и возвращает полученный результат.
 Пример:
 funcName("Swift", 2) -> "SwiftSwift"
 funcName("Xcode", 0) -> ""

func funcNumStr(_ textStr: String,_ countInt: Int) -> String {
    return String(repeating: textStr, count: countInt)
}
print(funcNumStr("Swift ", 3))
//Вариант 2
func repeatStr2(_ str: String, _ n: Int) -> String {
    var result = ""
    for _ in 0..<n {
        result += str
        //так же допустим вариант с
        //result.append(str)
    }
    return result
}
repeatStr2("Swift", 2) // "Swift"
repeatStr2("Xcode", 0) // ""
 
 Задание 9
 Мальчик находится на N-ом этаже в здании. Мама мальчика смотрит в окно на M-ом этаже здания. Мальчик выпускает из рук мячик, он летит вниз, отскакивает на (высота броска) * L, вновь летит вниз, вновь отскакивает на (высота предыдущего отскока) * L и т.д, пока не окончит отскакивать.
 Реализуйте функцию, которая высчитывает, сколько раз мяч пролетит мимо мамы (вниз и вверх). Функция должна принимать на вход следующие параметры:
 — высота одного этажа (h > 0)
 — этаж мальчика (N >= 2)
 — этаж мамы (M >= 1)
 — коэффициент отскока (L < 1)

 
 func ball(height h: Float, boyFloor N: Int, motherFloor M: Int, ratio L: Float) -> Int {
     var currentFloor = Float(N) * L
     var count = 1
     while currentFloor >= Float(M) {
         currentFloor *= L
         count += 2
     }
     return count
 
 Задание 10
 Напишите функцию, которая принимает параметр типа String, а возвращает true (типа Bool) если в строке есть только уникальные символы, и false, если в ней есть хотя бы один повторяющийся символ.


func symbolNew(text: String) -> Bool {
    var usedSymbols = [Character]()
    for symbol in text {
        if usedSymbols.contains(symbol) {
            return false
        }
        usedSymbols.append(symbol)
    }
    return true
}
 
 Задание 12
 Напишите функцию, которая принимает на вход целочисленный диапазон и возвращает из него все простые числа.
 
 
func getSimpleNumbers(from range: ClosedRange<Int>) -> [Int] {
    var simpleNumbers = [Int]()
    for number in range {
        for delimeter in range {
            if [0, 1].contains(delimeter) {
                continue
            }
            if number % delimeter == 0 && number == delimeter {
                simpleNumbers.append(number)
            } else if number % delimeter == 0 && number != delimeter {
                break
            }
        }
    }
    return simpleNumbers
}
getSimpleNumbers(from: 0...30) //[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
 */

