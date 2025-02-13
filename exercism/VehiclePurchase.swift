func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    if monthlyBudget * 60 >= price {
        return "Yes! I'm getting a \(vehicle)"
    } else if monthlyBudget * 60 * 1.1 > price {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2, 3:
        return "You will need a motorcycle license for your vehicle"
    case 4, 6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    if yearsOld < 3 {
        return (originalPrice * 80) / 100
    } else if 3 <= yearsOld && yearsOld < 10 {
        return (originalPrice * 70) / 100
    } else {
        return (originalPrice * 50) / 100
    }
}
