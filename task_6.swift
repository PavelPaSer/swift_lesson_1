import UIKit
// ЗАМЫКАНИЯ
/*
 Задание 3
 1) Напишите замыкание, которое принимает на вход параметр типа String и выводит его значение на консоль.
 2) Вызовите данное замыкание
 3) Какой тип данных у данного замыкания?
 
 
 let closurePrintMessage = { (message: String) in
 print(message)
 }
 closurePrintMessage("Этот текст будет выведен на консоль")
 
 Задание 4
 1) Напишите замыкание, которое принимает на вход два целочисленных параметра и возвращает их сумму.
 2) Протестируйте работу данного замыкания
 3) Какой тип данных будет у данного замыкания?
 
 
 let nimes = {(a: Int, b: Int) in
 return a + b
 }
 nimes(2,3)
 
 
 Задание 6
 1) Напишите замыкание типа (Int, Int) -> Int, которое высчитывает разность двух переданных ему чисел.
 2) Напишите функцию, которая принимает на вход два целочисленных параметра, а так же замыкание типа (Int, Int) -> Int. Данное замыкание (третий аргумент функции) должно определять операцию, которая будет производиться в теле функции.
 3) Вызовите данную функцию и передайте ей два целых числа, а так же написанное в шаге 1 замыкание.
 4) Вызовите данную функцию и передайте ей два целых числа, а так же замыкание, производящее умножение данных чисел. Причем замыкание должно передаваться не через промежуточный параметр-хранилище, а непосредственно в качестве аргумента
 
 let operation_1: (Int, Int) -> Int = { $0 + $1 }
 func operation_2( _ a: Int, _ b: Int, _ closure: (Int, Int) -> Int ) -> Int {
 return closure(a, b)
 }
 operation_2(24, 2, operation_1)
 operation_2(3, 4, *)
 
 
 Задание 9
 Вам дан массив целочисленных значений
 let arrayOfInt = [2,55,1,2,77,24,1,2]
 Отсортируйте его элементы по убыванию и выведите на консоль
 
 let arrayOfInt = [2,55,1,2,77,24,1,2]
 let newArrayInt = arrayOfInt.sorted()
 print(newArrayInt)
 
 let arrayIfFloat = [2,4,6.2,11,2,7,6.7]
 let sortedArray = arrayIfFloat.sorted() { $0 > $1 }
 print(sortedArray)
 
 МЕТОДЫ MAP, FILTER и т.д.
 
 Задание 1
 Ранее мы с вами уже решали данное задание:
 Напишите функцию, которая принимает на вход массив с элементами типа Int, а возвращает целое число — сумму всех положительных элементов переданного массива.
 К примеру для массива [1,-2,3,4,-5] должно быть возвращено 1+3+4 = 8
 В данном случае вам потребуется использовать изученные в этой главе методы для того, чтобы найти наиболее оптимальное решение
 
 
 func sumArray (_ newA: [Int] ) -> Int {
 return newA.filter{ $0 > 0 }.reduce(0, +)
 }
 sumArray([1,-2,3,4,-5])
 
 Задание 2
 Напишите функция, которая принимает на вход массив типа [Int] и возвращает так же массив, но в котором все элементы исходного массива возведены в квадрат.
 Пример:
 [1,2,3,4] -> [1,4,9,16]
 
 func sumArray (_ newA: Array<Int> ) -> Array<Int> {
 return newA.map{$0*$0}
 
 Задание 3
 Повтор задания из главы 15. В этот раз используйте изученные в данном разделе методы
 Напишите функцию, которая принимает на вход массив типа [Int] и, в случае, если количество элементов > 0, то возвращает целое число — произведение всех элементов переданной коллекции. Если количество элементов = 0, то возвращается 0.
 Пример
 [1,2,3,4,5] -> 1 * 2 * 3 * 4 = 24
 
 func ArrayNum(_ a: [Int]) -> Int {
 if a.count > 0 {
 return a.reduce(1, {a, b in a*b})
 } else {
 return 0
 }
 }
 ArrayNum([1,2,3,4,5])
 

Задание 4
У вас есть массив, состоящий из произвольного набора целых чисел
Напишиет функцию, которая возвращает массив типа [Int], состоящий только из четных элементов исходной коллекции
Пример:

([1,4,5,1,2,4,6,3,12,3]) -> [4, 2, 4, 6, 12]

func ArrayNumOi(_ a: [Int]) -> [Int] {
    return a.filter{ $0 % 2 == 0 }
}
 
Задание 5
 Напишите функцию, которая принимает на вход строку и заменяет в ней все цифры на соответсвующие имя слова (например 1 на «один», 8 на «восемь»)

func editStr( _ str: String ) -> String {
    // словарь соответсвий
    let dict = [Character("1"):"один", "2":"два", "3":"три", "4":"четыре", "5":"пять", "6":"шесть", "7":"семь", "8":"восемь", "9":"девять", "0":"ноль"]
    let replacedArr = str.map({
        (element: Character)->String in
        if dict[element] != nil {
            return dict[element]!
        }else{
            return String(element)
        }
    })
    var replacedStr = ""
        for ch in replacedArr {
            replacedStr += ch
        }
        return replacedStr
    }
editStr("Мне 1 2 года")
 
ПЕРЕЧИСЛЕНИЯ
 Задание 1
 1) В конце главы про «Перечисления» мы с вами начали создавать перечисление ArithmeticExpression, позволяющее выполнять арифметические операции. Сейчас перед вами стоит задача доработать данное перечисление, чтобы оно могло производить любые арифметические операции, включая сложение, вычитание, умножение, деление и возведение в степень.
 2) Проверьте работу перечисления на произвольных примерах

enum ArithmeticExpression {
    // указатель на конкретное значение
    case number( Int )
    // указатель на операцию сложения
    indirect case addition( ArithmeticExpression, ArithmeticExpression )
    // указатель на операцию вычитания
    indirect case subtraction( ArithmeticExpression, ArithmeticExpression )
    // указатель на операцию умножения
    indirect case multiplaction( ArithmeticExpression, ArithmeticExpression )
    // указатель на операцию деления
    indirect case division( ArithmeticExpression, ArithmeticExpression )
    // указатель на операцию возведения в степень
    indirect case pow( ArithmeticExpression, ArithmeticExpression )
    // метод, проводящий операцию
    func evaluate( _ expression: ArithmeticExpression? = nil ) -> Int{
        // определение типа операнда (значение или операция)
        switch expression ?? self{
        case let .number( value ):
            return value
        case let .addition( valueLeft, valueRight ):
            return self.evaluate( valueLeft )+self.evaluate( valueRight )
        case .subtraction( let valueLeft, let valueRight ):
            return self.evaluate( valueLeft )-self.evaluate( valueRight )
        case .multiplaction( let valueLeft, let valueRight ):
            return self.evaluate( valueLeft )*self.evaluate( valueRight )
        case .division( let valueLeft, let valueRight ):
            return self.evaluate( valueLeft )/self.evaluate( valueRight )
        case .pow( let valueLeft, let valueRight ):
            if self.evaluate( valueRight ) == 0 {
                return 1
            }else{
                var result = self.evaluate( valueLeft )
                for _ in 1..<self.evaluate( valueRight ){
                    result *= evaluate( valueLeft )
                }
                return result
            }
        }
    }
}
var hardExpr = ArithmeticExpression.pow( .number(3), .number(3) )
hardExpr.evaluate() // 27
hardExpr = ArithmeticExpression.division( .number(3), .number(3) )
hardExpr.evaluate() // 9

 Задание 2
 Корректно ли будет выполнен данный код? Если нет, то какие правки необходимо в него внести, чтобы исправить ошибки?
 enum Seasons{
     case winter, spring, summer, autumn
 }
 let whiteSeason = Seasons.winter
 var greenSeason: Seasons = .spring
 greenSeason = .summer
 var orangeSeason = .autumn
 var bestSeason = whiteSeason
 bestSeason = .summer

enum Seasons{
    case winter, spring, summer, autumn
}
let whiteSeason = Seasons.winter
var greenSeason: Seasons = .spring
greenSeason = .summer
var orangeSeason = Seasons.autumn
var bestSeason = whiteSeason
bestSeason = .summer

 Задание 3
 Простейшая модель сущности «Шахматная фигура» может быть выполнена с помощью перечисления.
 1) Создайте перечисление Chessman, члены которого определяют возможные типы шахматных фигур (всего 6 типов, без учета цвета).
 2) Внутри перечисления Chessman создайте перечисление Color, определяющее возможные цвета шахматных фигур.
 3) Для каждого члена перечисления Chessman создайте связанный параметр типа Color, позволяющий указать цвет шахматной фигуры
 4) Создайте несколько экземпляров типа Chessman, каждый из которых описывает свою шахматную фигуру
 5) Напишите конструкции switch-case, способную обрабатывать параметр типа Chessman и выводить на консоль информацию о типе и цвете фигуры
 6) Создайте новую переменную и инициализируйте ей значение типа Color, вложенного в перечисление Chessman

//1-3
enum Chessman {
    enum Color: String {
        case white = "white"
        case black = "black"
    }
    case king(color: Color)
    case queen(color: Color)
    case bishop(color: Color)
    case knight(color: Color)
    case rook(color: Color)
    case pawn(color: Color)
}
//4
var whiteKing: Chessman = .king(color: .white)
var blackKing: Chessman = .king(color: .black)
var whiteBishop: Chessman = .bishop(color: .white)

//5
switch whiteKing {
case .king(color: .white):
    print("Белый король")
    break
case .king(color: .black):
    print("Черный король")
case .bishop(color: .white):
    print("Белый король")
case .bishop(color: .black):
    print("Черный король")
default:
    break
}

 
 Задание 4
 1) Создайте перечисление Day, члены которого указывают на дни недели.
 В составе перечисления создайте вычисляемое свойство, которое возвращает наименование дня недели на русском языке (значение типа String), соответсвующее выбранному члену перечисления
 2) Проверьте работу перечисления с помощью следующих выражений

 let mon = Day.monday
 print(mon.label) // Понедельник
 print(Day.friday.label) // Пятница

enum Day {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    var name : String {
        switch self {
        case .monday:
            return "Понедельник"
        case .tuesday:
            return "Вторник"
        case .wednesday:
            return "Среда"
        case .thursday:
            return "Четверг"
        case .friday:
            return "Пятница"
        case .saturday:
            return "Суббота"
        case .sunday:
            return "Воскресенье"
        }
    }
}
//2
let mon = Day.monday
print(mon.name)
print(Day.friday.name)
 */
