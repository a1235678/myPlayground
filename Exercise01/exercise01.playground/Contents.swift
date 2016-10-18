//: Playground - noun: a place where people can play
//作業三

import UIKit


//====1.計算全部格子的總合====
var sum1 = 0

for i in 0...7{
    for j in 0...7{
        sum1 = sum1 + i * j
    }
}
print(sum1)

//====2.計算奇數行數字的總合====
var sum2 = 0

for i in 0...7{
    if i % 2 == 1{
    for j in 0...7{
        sum2 = sum2 + i * j
        }
    }
}
print(sum2)

//====3.計算所有格子的總合，除了列數 >= 行數的格子
var sum3 = 0

for i in 0...7{
    for j in 0...7{
        if j < i{
            sum3 = sum3 + i * j
        }
    }
}
print(sum3)

/*====4.定義function====  ***
接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果
比方起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數)
運算結果為 5 + 10 + 15 + ..... + 95  */
func showNumber(min: Int, max: Int, number: Int) -> Int{
    var sum = 0
    
    for i in min...max{
        if i % number == 0{
           sum = sum + i
        }
    }
    return sum
}

var sum4 = showNumber(min: 3, max: 98, number: 5)

/*====5.定義function====
接受3個參數，起始值，最大值和決定數字倍數的number，回傳運算結果
比方起始值3，最大值11，決定數字倍數的number為5時，(不包含5的倍數)
運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11  */
 func showNotNumber(min: Int, max: Int, number: Int) -> Int{
 var sum = 0
 
 for i in min...max{
 if i % number != 0{
 sum = sum + i
 }
 }
 return sum
 }
 
 var sum5 = showNotNumber(min: 3, max: 11, number: 5)

/*====6.奇數行的數字總合====
定義function，接受2個參數，分別代表行數和列數 */
func oddSum(columns: Int, rows: Int) -> Int{
    var sum = 0
    
    for i in 0...columns{
        if i % 2 == 1{
            for j in 0...rows{
                sum = sum + i * j
            }
        }
    }
    return sum
}
var sum6 = oddSum(columns: 7, rows: 7)

/*====7.所有格子的總合，除了列數>=行數的格子====
定義function，接受2個參數，分別代表行數和列數  */
func partSum(columns: Int, rows: Int) -> Int{
    var sum = 0
    
    for i in 0...columns{
        for j in 0...rows{
            if j < i{
                sum = sum + i * j
            }
        }
    }
    return sum
}
var sum7 = partSum(columns: 7, rows: 7)

/*====8.定義一個function====
接受一個參數代表華式溫度，回到攝式溫度  */
func degreeFToC(degreeF: Int) -> Int{
    let degreeC = (degreeF - 32) * 5 / 9
    return degreeC
}
var degree = degreeFToC(degreeF: 120)





