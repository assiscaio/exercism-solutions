(ns leap)

(defn leap-year? [year]
  (if (or 
         (and (zero? (mod year 4)) (not (zero? (mod year 100))))
         (and (zero? (mod year 4)) (zero? (mod year 100)) (zero? (mod year 400)))
       )
    true
    false
  )
)