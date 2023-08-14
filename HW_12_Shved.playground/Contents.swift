import Foundation

let collectionAny: [Any] = [2.94, 3.10, 5, 30, "circle", "triangle", true, false]
print(collectionAny)

for item in collectionAny {
    if item is Double {
        print("Вещественное число \(item)")
    } else if item is Int {
        print("Целое число \(item)")
    } else if item is String {
        print("Строка \(item)")
    } else if item is Bool {
        print("Булево значение \(item)")
    }
}

let newDictionary: [String: Any] = ["Целое число": 50, "Вещественное число": 3.5, "Строковое значение": "circle", "Булево значение": true]
print(newDictionary)

var total: Double = 0.0


for item in newDictionary.values {
    if item is Double {
        total += item as! Double
    } else if item is Int {
        total += Double(item as! Int)
    } else if item is String {
        total += 1.0
    } else if item is Bool {
        item as! Bool == true ? (total+=2) : (total+=3)
    }
}
print(total)

total = 0

for item in newDictionary.values {
    if item is Double {
        total += item as! Double
    } else if item is Int {
        total += Double(item as! Int)
    } else if item is String {
        var str = Double(item as! String) ?? 0
        total += str
    }
}
print(total)

