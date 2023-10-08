//
//  main.swift
//  OOP - Overriding
//
//  Created by Ahmet Erkut on 8.10.2023.
//

import Foundation
/*
    In Swift, the override keyword is used to indicate that a subclass is providing a new implementation for a method or property that is already defined in its superclass. When you override a method or property, you are essentially replacing or customizing the behavior of the inherited item.
*/

///1. Inheritance Setup:
///First, you need to have a superclass and a subclass relationship, as explained in the previous answer. The superclass contains the method or property you want to override, and the subclass provides the new implementation.
class Animal {
    func makeNoise(){
        print("No voice")
    }
}

class Mammal: Animal {
}

///2. Overriding a Method:
///To override a method, you declare a method with the same name and the override keyword in the subclass. The method signature (including parameters and return type) should match the one in the superclass. You can provide a new implementation in the subclass.
class Cat: Mammal {
    override func makeNoise() {
        print("Meow, meow")
    }
}

class Dog: Mammal {
    override func makeNoise() {
        print("Woof, woof")
    }
}

///3. Using the Override:
///When you create an instance of the subclass and call the overridden method, the subclass's implementation is executed:
let a = Animal()
let m = Mammal()
let c = Cat()
let d = Dog()

a.makeNoise() // No voice (no inheritance, executed self func)
m.makeNoise() // No voice (there is an inheritance, executed superclass func)
c.makeNoise() // Meow, meow (there is an inheritance, executed self func)
d.makeNoise() // Woof, woof (there is an inheritance, executed self func)
