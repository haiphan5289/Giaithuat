//
//  ViewController.swift
//  GiaiThuat
//
//  Created by Phan Hai on 22/06/2020.
//  Copyright © 2020 Phan Hai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var a = [1,4,5,3,6,9,7,2,8,10]
    var isSort: Bool = true
    var countSort: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        repeat {
            self.sortLess()
        } while isSort == true
        print(a)
        self.multi2()
        self.searchBest()
        self.filter()
        print(a)
        
        let f: CGFloat = 3.2
        let g = Int(f)
        let h = f - CGFloat(g)
        print(h
        )
        daonguocso(number: 456)
        findBestNumber(number: 1349789)
        findBestNUmberIn3(number1: 3, number2: 99, number3: 8)
        inputNumberCheck(number1: -2, number2: -5)
        calculatorNumber(inputNumber: 6)
        findPositiveFirst(arInt: [0, -3, 5, 6, 4])
        findNumberEven(arInt: [1,3,5,13,7,11,9,17, -2])
        findSmallestIndex(arInt: [9,7,5,6,8,1,3])
        findNumberEqualPreAndAfter(arInt: [1,2,4,4,1,5,6,7,8])
        let person: Person = Person()
        let job: Job = Job()
        person.job = job
        job.person = person
        findFirstNumberInRange(arInt: [1,3,4,5], arRange: [1,6])
        findNumberSoGanh(arInt: [0,2,0,2,3])
        check2Ar()
        findNumberAppears(arInt: [1,2,1])
        CompareChanLe(arInt: [1,2,4])
        detectValueSideisEvent(arInt: [1,2,3,4,5,6])
        countNumber2Ar(arInt1: [0,1,5], arInt2: [3,4])
        countAppearArAToArB(arInt1: [1,2,3], arInt2: [1,4,1,1,1])
    }
    
    func sortLess() {
        self.countSort = 0
        for i in 0...a.count - 1 {
            if i == a.count - 1 {
            } else {
                if a[i] > a[i + 1] {
                    a[i + 1] = a[i] + a[i + 1]
                    a[i] = a[i + 1] - a[i]
                    a[i + 1] = a[i + 1] -  a[i]
                    self.countSort += 1
                }
            }
        }
        if self.countSort > 0 {
            self.isSort = true
        } else {
            self.isSort = false
        }
    }
    
    func multi2() {
        var c: [Int] = []
        for i in 0...a.count - 1 {
            if a[i] % 2 == 0 {
                c.append(a[i])
            }
        }
        print(c)
    }
    
    func searchBest() {
        var c: Int = 0
        for i in 0...a.count - 1 {
            if i == 0 {
                c = a[i]
            } else {
                if a[i] >= c {
                    c = a[i]
                }
            }
        }
        print(c)
    }
    
    func filter() {
        var c: [Int] = []
        for i in 0...a.count - 1 {
            if a[i] % 2 != 0 {
                c.append(a[i])
            }
        }
        self.a = c
    }
    
    func daonguocso(number: Int) -> Int{
        let strNumber = String(number)
        var textChange = ""
        for i in 0...strNumber.count - 1 {
            let index = strNumber.index(strNumber.startIndex, offsetBy: strNumber.count - 1 - i)
            let text = strNumber[index]
            textChange.append(text)
        }
        print(textChange)
        let d = Int(textChange)
        return Int(textChange) ?? 0
    }
    
    func findBestNumber(number: Int) {
        let strNumber = String(number)
        var nummberBest = 0
        for i in 0...strNumber.count - 1 {
            let index = strNumber.index(strNumber.startIndex, offsetBy: i)
            if i == 0 {
                nummberBest = Int(String(strNumber[index])) ?? 0
            } else {
                let numberChac = Int(String(strNumber[index])) ?? 0
                if numberChac > nummberBest {
                    nummberBest = numberChac
                }
            }
        }
        countBestNumberV(number: String(number), bestNumber: nummberBest)
    }
    func countBestNumberV(number: String, bestNumber: Int) {
        var count = 0
        for i in 0...number.count - 1 {
            let index = number.index(number.startIndex, offsetBy: i)
            if Int(String(number[index])) ==  bestNumber {
                count += 1
            }
        }
        print(count)
    }
    
    func findBestNUmberIn3(number1: Int, number2: Int, number3: Int) {
        var max = number1
        if number2 >= max {
            max = number2
        }
        
        if number3 >= max {
            max = number3
        }
        
        print(max)
    }
    
    func inputNumberCheck(number1: Int, number2: Int) {
        if number1 >= 0 && number2 >= 0 {
            print("CÙng là số dương")
        } else if number1 < 0  && number2 < 0 {
            print("CÙng số âm")
        } else {
            print("Khác nhau")
        }
    }
    
    func calculatorNumber(inputNumber: Int) {
        var s = 0
        for i in 0...inputNumber {
            s = s + i
        }
        print(s)
    }
    
    func findPositiveFirst(arInt: [Int]) {
        var isFound: Bool = false
        var numberFound: Int?
        for i in 0...arInt.count - 1 {
            if !isFound {
                if arInt[i] >= 0 {
                    isFound = true
                    numberFound = arInt[i]
                }
            }
        }
        print(numberFound)
    }
    
    func findNumberEven(arInt: [Int]) {
        var eventNumber: Int?
        for i in 0...arInt.count - 1 {
            if arInt[i] % 2 == 0 {
                eventNumber = arInt[i]
            }
        }
        if (eventNumber != nil) {
            print(eventNumber)
        } else {
            print("-1")
        }
    }
    
    func findNumberEvenTheBestDistance(arInt: [Int]) {
        var numberBest: Int?
        var distance: Int?
        
        for i in 0...arInt.count - 1 {
            if arInt[i] % 2 == 0 {
                if (numberBest != nil) {
                    if distance != nil {
                        
                    } else {
                        
                    }
                } else {
                    numberBest = arInt[i]
                }
            }
        }
    }
    
    func findSmallestIndex(arInt: [Int]) {
        var numberSmallest: Int?
        var index: Int?
        for i in 0...arInt.count - 1 {
            if i == 0 {
                numberSmallest = arInt[i]
                index = 0
            } else {
                if arInt[i] < (numberSmallest ?? 0) {
                    numberSmallest = arInt[i]
                    index = i
                }
            }
        }
        print(numberSmallest)
        print(index)
    }
    func findNumberEqualPreAndAfter(arInt: [Int]) {
        //         Cho mảng 1 chiều các số thực. Hãy viết hàm tìm một vị trí trong mảng thỏa 2 điều kiện:
        //        có 2 giá trị lân cận và giá trị tại đó bằng tích 2 giá trị lân cận.
        //        Nếu mảng không tồn tại giá trị như vậy thì trả về giá trị -1
        var isFound: Bool = false
        var findNumber: Int = 0
        for i in 0...arInt.count - 1 {
            if i != 0 && i != arInt.count - 1 {
                if arInt[i] == arInt[i - 1] * arInt[i + 1] {
                        findNumber = arInt[i]
                        isFound = true
                    }
            }
        }
        if isFound {
            print(findNumber)
        } else {
            print("-1")
        }
    }
    
    func findFirstNumberInRange(arInt: [Int], arRange: [Int]) {
//        Cho mảng 1 chiều các số nguyên, hãy tìm giá trị đầu tiên nằm trong khoảng [x, y] cho trước. Nếu mảng không có giá trị thỏa điều kiện trên thì trả về -1
        guard let fisrt = arRange.first, let last = arRange.last else {
            return
        }
        var firstNumber: Int?
        var lastNumber: Int?
        var arSelect: [Int] = []
        for i in 0...arInt.count - 1 {
            if firstNumber == nil {
                if arInt[i] == fisrt {
                    firstNumber = arInt[i]
                    arSelect.append(arInt[i])
                }
            } else {
                if lastNumber == nil {
                    if arInt[i] == last {
                        lastNumber = arInt[i]
                        arSelect.append(arInt[i])
                    } else {
                        arSelect.append(arInt[i])
                    }
                    
                }
            }
        }
        if firstNumber == nil || lastNumber == nil {
            print("-1")
        } else {
            print(arSelect)
        }
        
    }
    func findNumberSoGanh(arInt: [Int]) {
        var arGanh: [Int] = []
        for i in 0...arInt.count - 1 {
            if i != 0 && i != arInt.count - 1 {
                if arInt[i - 1] == arInt[i + 1] {
                    arGanh.append(arInt[i])
                }
            }
        }
        print(arGanh)
    }
    func check2Ar() {
        let a = [[1,2,3], [4,5,6]]
        let d: Int = a.filter { (value) -> Bool in

            return true
        }.reduce(0) { (x, y) -> Int in
            print(y)
            let e = y.reduce(0) { (x, y) -> Int in
                return x + y
            }
            return x + e
        }
        print(d)
        let f = a.reduce(0) { (x, y) -> Int in
            let e = y.reduce(0) { (x, y) -> Int in
                return x + y
            }
            return x + e
        }
        print(f)
        
        let method = 1
        let check: CheckType = .h
        if ...CheckType.h.rawValue ~= method {
            print("sssss")
        }
    }
    
    func findNumberAppears(arInt: [Int]) {
        //    Cho mảng 1 chiều các số nguyên. Hãy  viết hàm tìm chữ số xuất hiện ít nhất trong mảng
        var arAppears: [Int] = []
        var arIlp: [CountNumber] = []
        for item in arInt {
            if !arAppears.contains(item) {
                arAppears.append(item)
            }
        }
        for i in arAppears {
            var countNumber = 0
            for j in arInt {
                if j == i {
                    countNumber += 1
                }
            }
            let a: CountNumber = CountNumber(number: i, count: countNumber)
            arIlp.append(a)
        }
        var k: CountNumber = CountNumber(number: 0, count: 0)
        for z in 0...arIlp.count - 1 {
            if z == 0 {
                k = arIlp[z]
            } else {
                if arIlp[z].count < k.count {
                    k = arIlp[z]
                }
            }
        }
        print(k)
    }
    func CompareChanLe(arInt: [Int]) {
        var countChan: Int = 0
        var countLe: Int = 0
        arInt.enumerated().forEach { (value) in
            if value.element % 2 == 0 {
                countChan += 1
            } else {
                countLe += 1
            }
        }
        switch countChan - countLe {
        case let x where x < 0:
            print("Số lẻ nhiều hơn")
        case let x where x > 0:
            print("Số chẵn nhiều hơn")
        default:
            print("Bằng nhâu")
        }
        
    }
    func detectValueSideisEvent(arInt: [Int]) {
//        Hãy xác định số lượng phần tử kề nhau mà cả 2 đều chẵn
        var arEvent: [Int] = []
        for i in 0...arInt.count - 1 {
            if i != 0 && i != arInt.count - 1 {
                if arInt[i - 1] % 2 == 0 && arInt[i + 1] % 2 == 0 {
                    arEvent.append(arInt[i])
                }
            }
        }
        print(arEvent)
    }
    func countNumber2Ar(arInt1: [Int], arInt2: [Int]) {
//        Cho 2 mảng a, b. Đếm số lượng giá trị chỉ xuất hiện 1 trong 2 mảng
        var arInt1Temp = arInt1
        var arInt2Temp = arInt2
        for i in 0...arInt1.count - 1 {
            for j in 0...arInt2.count - 1 {
                if arInt1[i] == arInt2[j] {
                    arInt1Temp.remove(at: i)
                }
            }
        }
        for i in 0...arInt2.count - 1 {
            for j in 0...arInt1.count - 1 {
                if arInt2[i] == arInt1[j] {
                    arInt2Temp.remove(at: i)
                }
            }
        }
        for i in 0...arInt1Temp.count - 1 {
            var isAppear = false
            for j in 0...arInt2Temp.count - 1 {
                if arInt1Temp[i] == arInt2Temp[j] {
                    isAppear = true
                }
            }
            if isAppear == false {
                arInt2Temp.append(arInt1Temp[i])
            }
        }
        print(arInt2Temp)
        // 2 + n*2m + m*2n + 3n * 2m
    }
    func countAppearArAToArB(arInt1: [Int], arInt2: [Int]) {
//        Cho 2 mảng a, b. Hãy cho biết số lần xuất hiện của mảng a trong mảng b
        var arCount: [CountNumber] = []
        for i in 0...arInt1.count - 1 {
            var countNumber = 0
                for j in 0...arInt2.count - 1 {
                    if arInt1[i] == arInt2[j] {
                        countNumber += 1
                    }
                }
            if countNumber > 0 {
                let numberCOunt: CountNumber = CountNumber(number: arInt1[i], count: countNumber)
                arCount.append(numberCOunt)
            }
        }
        print(arCount)
        // 1 + 4n * 2m
    }
    
}
class Job {
    var person: Person?
}
class Person {
    var job: Job?
}
enum CheckType: Int {
    case h = 1
}
struct CountNumber {
    let number: Int
    let count: Int
}
