//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let lock = NSLock()
class LThread : Thread {
    var id:Int = 0
    
    convenience init(id:Int){
        self.init()
        self.id = id
    }
    
    override func main(){
        lock.lock()
        print(String(id)+" acquired lock.")
        lock.unlock()
        if lock.try() {
            print(String(id)+" acquired lock again.")
            lock.unlock()
        }else{  // If already locked move along.
            print(String(id)+" couldn't acquire lock.")
        }
        print(String(id)+" exiting.")
    }
}
var t1 = LThread(id:1)
var t2 = LThread(id:2)
t1.start()
t2.start()

let cond = NSCondition()
var available = false
var SharedString = ""
class WriterThread : Thread {
    
    override func main(){
        for _ in 0..<5 {
            cond.lock()
            SharedString = "😅"
            available = true
            cond.signal() // 通知并且唤醒等待的线程
            cond.unlock()
        }
    }
}
class PrinterThread : Thread {
    
    override func main(){
        for _ in 0..<5 { // 循环 5 次
            cond.lock()
            while(!available){   // 通过伪信号进行保护
                cond.wait()
            }
            print(SharedString)
            SharedString = ""
            available = false
            cond.unlock()
        }
    }
}
let writet = WriterThread()
let printt = PrinterThread()
printt.start()
writet.start()