//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    var tank = 0
    var ind = 0
    var total = 0
    for (index, value) in gas.enumerated() {
        total += value - cost[index]
        tank = tank + value - cost[index];
        if tank < 0 {
            ind = index
            tank = 0
        }
        
    }
    if total < 0 {
        return -1
    } else {
        return (ind + 1) % gas.count
    }
}

let gas = [1, 2, 3, 4, 5]
let cost = [3, 4, 5, 1, 2]
canCompleteCircuit(gas, cost)
