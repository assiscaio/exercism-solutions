module CarsAssemble

let successRate (speed: int): float =
    if speed = 0 then 0.0
    elif speed > 0 && speed < 5 then 1.0
    elif speed >= 5 && speed < 9 then 0.9
    elif speed = 9 then 0.8
    else 0.77
    
let productionRatePerHour (speed: int): float =
    let carsPerSpeed = 221
    float (carsPerSpeed * speed) * (successRate speed)

let workingItemsPerMinute (speed: int): int =
    (productionRatePerHour speed) / float 60
        |> int
