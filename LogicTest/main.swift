//
//  main.swift
//  LogicTest
//
//  Created by Jesus Ruiz on 1/8/21.
//

import Foundation

func main(){

    while let input = readLine() {
        guard input != "quit" else {
            break
        }
        if let T = Int(input) {
            settings(t: T)
        }
    }
    
}

func settings(t: Int){
    
    if (t >= 1 && t <= 5000) {
        var temp: [Int] = []
        for _ in 1...t {
            let array = readLine()?.split {$0 == " "}.map (String.init)
            if let input = array {
                if let n = Int(input[0]) {
                    if (n < 1) {
                        break
                    } else {
                        temp.append(n)
                    }
                }
                if let m = Int(input[1]) {
                    if (m > 1000000000) {
                        break
                    } else {
                        temp.append(m)
                    }
                }
            }
        }
        
        for T in stride(from: 0, to: t*2, by: 2) {
            gridDirection(n: temp[T], m: temp[T+1])
        }
        
    } else {
        print("1 <= T <= 5000")
    }
}

func gridDirection(n: Int,m: Int){
    if (n > m) {
        (m % 2 == 0) ? print("U") :  print("D")
    }
    if (n <= m) {
        (n % 2 == 0) ? print("L") :  print("R")
    }
}

main()
