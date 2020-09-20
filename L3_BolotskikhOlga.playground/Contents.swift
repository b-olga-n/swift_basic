import UIKit

enum engineState {
    case on, off
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

enum fueltankState {
    case full, empty
}

struct someCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "grey"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var trunkVol : Double {
        willSet {
            if (trunkState == .empty) && (trunkVol > 0) && (trunkVol != 0) && (newValue < trunkVol) {
                let space = trunkVol - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("Input error or \(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .on {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

struct someTruck {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "grey"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var trunkVol : Double {
        willSet {
            if (trunkState == .empty) && (trunkVol > 0) && (trunkVol != 0) && (newValue < trunkVol) {
                let space = trunkVol - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("\(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .on {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

var car1 = someCar(brand: "Toyota", model: "RAV4", color: "clear", release: 2019, trunkVol: 680.0 , engineState: .off, windowState: .open, trunkState: .empty)
/*var car2 = someCar(brand: "VAZ", model: "2109", color: "clear", release: 2007, trunkVol: 300.0, engineState: .off, windowState: .close, trunkState: .full)*/

var truck1 = someTruck(brand: "Mercedes-Benz", model: "ACTROS", color: "clear", release: 2010, trunkVol: 100000.0, engineState: .on, windowState: .open, trunkState: .full)
/*var truck2 = someTruck(brand: "MAN", model: "TGX", color: "clear", release: 2013, trunkVol: 150000.0, engineState: .on, windowState: .close, trunkState: .empty*/


car1.engineState = .on
car1.trunkVol = 340.0
car1.changeColor(c: "black")

print ("Information about the first car: brand&model: \(car1.brand)\(car1.model), release: \(car1.release), color: \(String(describing: car1.color)), free trunkVol: \(car1.trunkVol), engine is \(car1.engineState)")

truck1.engineState = .off
truck1.trunkVol = 100000.0
truck1.changeColor(c: "red")

print ("Information about the first truck: brand&model: \(truck1.brand)\(truck1.model), release: \(truck1.release), color: \(String(describing: truck1.color)), free trunkVol: \(truck1.trunkVol), engine is \(truck1.engineState)")
