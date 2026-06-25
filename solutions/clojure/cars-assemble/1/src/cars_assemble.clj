(ns cars-assemble)
(def default-speed-production 221.0)

(defn mult-success-rate
  [speed]
  (cond
    (= speed 0) 0.0
    (and (>= speed 1) (<= speed 4)) 1.0
    (and (>= speed 5) (<= speed 8)) 0.9
    (= speed 9) 0.8
    :else 0.77
    )
  )

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (* default-speed-production speed (mult-success-rate speed)))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60.0)))
