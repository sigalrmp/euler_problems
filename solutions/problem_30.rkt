#lang racket

(define (digi-sum n)
  (if (= n 0)
      0
      (+ (expt (modulo n 10) 5)
         (digi-sum (floor (/ n 10))))))

(define (cond-val f n default)
  (if (f n) n default))

(define (solve-h n)
  (cond
    [(< n 10) 0]
    [else (+ (cond-val (lambda (n) (= (digi-sum n) n))
                       n
                       0)
             (solve-h (- n 1)))]))

(define (solve) (solve-h 999999))