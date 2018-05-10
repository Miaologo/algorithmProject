//: [Previous](@previous)

import Foundation

class Student {
    let name: String
    let grade: Int
    init?(json: [String : Any]) {
        guard let name = json["name"] as? String, let gradeString = json["grade"] as? String, let gradeDouble = Double(gradeString), let grade = Int(exactly: gradeDouble) else {
            return nil
        }
        self.name = name
        self.grade = grade
    }
}

func makeStudents(with data: Data) -> [Student] {
    guard let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments), let jsonArray = json as? [[String: Any]] else {
        return []
    }
    return jsonArray.flatMap(Student.init)
}


//let rawStudents = "[{\"name\":\"Ray\", \"grade\":\"5.0\"}, {\"name\":\"Matt\", \"grade\":\"6\"}, {\"name\":\"Chris\", \"grade\":\"6.33\"}, {\"name\":\"Cosmin\", \"grade\":\"7\"}, {\"name\":\"Steven\", \"grade\":\"7.5\"}]"
//let data = rawStudents.data(using: .utf8)!
//let students = makeStudents(with: data)
//dump(students)

class Wolf {
    var name: String = "wolf"
    func soul() {
        print("my soul is wolf")
    }
    func headPointerOfClass() -> UnsafeMutablePointer<Int8> {
        let opaquePointer = Unmanaged.passUnretained(self as AnyObject).toOpaque()
        let mutableTypedPointer = opaquePointer.bindMemory(to: Int8.self, capacity: MemoryLayout<Wolf>.stride)
        return UnsafeMutablePointer<Int8>(mutableTypedPointer)
    }
}

class Fox {
    var name: String = "fox"
    func soul() {
        print("my soul is fox")
    }
    
    func headPointerOfClass() -> UnsafeMutablePointer<Int8> {
        let opaquePointer = Unmanaged.passUnretained(self as AnyObject).toOpaque()
        let mutableTypePointer = opaquePointer.bindMemory(to: Int8.self, capacity: MemoryLayout<Fox>.stride)
        return UnsafeMutablePointer<Int8>(mutableTypePointer)
    }
}

let wolf = Wolf()
var wolfPtr = UnsafeMutableRawPointer(wolf.headPointerOfClass())

let fox = Fox()
var foxPtr = UnsafeMutableRawPointer(fox.headPointerOfClass())
foxPtr.advanced(by: 0).bindMemory(to: UnsafeMutablePointer<Wolf.Type>.self, capacity: 1).initialize(to: wolfPtr.advanced(by: 0).assumingMemoryBound(to: UnsafeMutablePointer<Wolf.Type>.self).pointee)

print(type(of: fox))        //Wolf
fox.name                    //"fox"
fox.soul()                  //my soul is wolf



struct MyPoint {
    var x: Double
    var y: Double
}
let size = MemoryLayout<MyPoint>.size
print(size)
let point1 = MyPoint(x: 6, y: 5)
let instanceSize = MemoryLayout<MyPoint>.size(ofValue: point1)

class PointClass {
    var x: Double = 0.0
    var y: Double = 0.0
}
let size1 = MemoryLayout<PointClass>.size
print(size1)


var test2 = 10

var urlStr = "meituanmovie://www.meituan.com/web?url=http://m.maoyan.com/newGuide/ggswxf0524"

protocol MyProtocol {
    
    func extensionMethod()
}

struct MyStruct: MyProtocol {
    
}

extension MyStruct {
    func extensionMethod() {
        print("In Struct")
    }
}
extension MyProtocol {
    func extensionMethod() {
        print("In protocol")
    }
    
}

let myStruct = MyStruct()
let proto: MyProtocol = myStruct
myStruct.extensionMethod()
proto.extensionMethod()

//class Person: NSObject {
//    func sayHi() {
//        print("Hello")
//    }
//}
//func greetings(person: Person) {
//    person.sayHi()
//}
//greetings(person: Person())
//
//class MisunderstoodPerson: Person {
//
//}
//
//extension MisunderstoodPerson {
//    override func sayHi() {
//        print("No one gests me.")
//    }
//}
//
//greetings(person: MisunderstoodPerson())

protocol Greetable {
    func sayHi()
}
extension Greetable {
    func sayHi() {
        print("Hello")
    }
}
func greeting(greeting: Greetable) {
    greeting.sayHi()
}


class PersonNew: Greetable {
}

class LoudPerson: PersonNew {
    func sayHi() {
        print("HELLO")
    }
}

greeting(greeting: PersonNew())
greeting(greeting: LoudPerson())


//let values = "one,two,three"
//var i = values.characters.startIndex
//let comma = values.characters[i..<values.characters.endIndex].index(of:",")
//while let comma = values.characters[i..<values.characters.endIndex].index(of:",") {
////    if values.characters[i..<comma] == "two" {
////        print("found it")
////    }
//    i = values.characters.index(after: comma)
//}


let values = "abcdefg"
let startIndex = values.startIndex
let startSlicingIndex = values.index(values.startIndex, offsetBy: 3)

let n = NSNumber(value: 999)
let v = n as? UInt8
