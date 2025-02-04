func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  return (dailyRateFrom(hourlyRate: hourlyRate) * 22.0 * (100.0 -  discount) / 100.0).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
   return (budget / (dailyRateFrom(hourlyRate: hourlyRate) * (100.0 -  discount) / 100.0)).rounded(.down)
}
