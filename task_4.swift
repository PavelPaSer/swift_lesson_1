import UIKit

// ОПЕРАТОРЫ УПРАВЛЕНИЯ

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
 */
