import UIKit

protocol FlyBehavior {
    func fly()
}

protocol QuackBehavior {
    func quack()
}

class Fly : FlyBehavior {
    func fly() {
         print("I'm flying")
    }
}

class Quack : QuackBehavior {
    func quack() {
        print("Quack Quack")
    }
}

class Squeak : QuackBehavior {
    func quack() {
        print("Squeak Squeak")
    }
}

// MARK: - 1. Super Class

class Duck {
    
    var quackBehavior : QuackBehavior?
    
    var flyBehavior: FlyBehavior?
    
    func swim() {
        print("I'm swimming")
    }
    
    func performQuack() {
        self.quackBehavior?.quack()
    }
    
    func performFly() {
       self.flyBehavior?.fly()
    }
    
    func display() {
        
    }
    
    init() {
        self.display()
    }
}

// MARK: - 2. Concrete Class

class MallardDuck : Duck {
    
    override init() {
        super.init()
        
        self.flyBehavior = Fly()
        self.quackBehavior = Quack()
    }
    
    override func display() {
        print("I am the real mallard duck")
    }
}

class RedheadDuck : Duck {
    
    override init() {
        super.init()
        
        self.flyBehavior = Fly()
        self.quackBehavior = Quack()
    }
    
    override func display() {
        print("I am the real redhead duck")
    }
}

class RubberDuck : Duck {
    
    override init() {
        super.init()
        
        self.quackBehavior = Squeak()
    }
    
    override func display() {
        print("I'm rubber duck")
    }
}

// MARK: - 3. Objects

var duck : Duck = RedheadDuck()
duck = RubberDuck()
duck.flyBehavior = Fly()
duck.performFly()
duck.performQuack()






