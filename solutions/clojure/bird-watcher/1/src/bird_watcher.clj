(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4]
  )

(defn today [birds]
  (last birds)
  )

(defn inc-bird [birds]
  (assoc birds
         (- (count birds) 1)
         (inc (last birds))))

(defn day-without-birds? [birds]
  (if
    (some #(= % 0) birds) true
    false))

(defn n-days-count [birds n]
  (reduce (fn[bird, acc] (+ bird acc)) 0 (take n birds)))

(defn busy-days [birds]
  (count (filter (fn[elem] (>= elem 5)) birds)))

(defn odd-week? [birds]
  (if (= [1 0 1 0 1 0 1] birds) true false))
