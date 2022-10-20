#lang racket

(define (digits-h n d)
  (if (< n 1)
      d
      (digits-h (/ n 10) (+ d 1))))

(define (digits n)
  (digits-h n 0))


(define (fib-h l i goal)
  (if (>= (digits (car l)) goal)
      i
      (fib-h (cons (+ (car l) (cadr l)) l)
             (+ i 1)
             goal)))

(define (fib)
  (define goal 1000)
  (fib-h (list 1 1) 2 goal))

(fib)
  