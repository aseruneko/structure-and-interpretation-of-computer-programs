#lang sicp
(define (sqrt-iter guess x before)
        (if (good-enough? guess before)
            guess
            (sqrt-iter  (improve guess x)
                        x 
                        guess)))
(define (improve guess x)
        (average guess (/ x guess)))
(define (average x y)
        (/ (+ x y) 2))
(define (square x)
        (* x x))
(define (good-enough? before after)
        (< (abs (- before after)) 0.001))
(define (sqrt   x)
        (sqrt-iter  1.0 x (+ x 1.0)))
(sqrt 2)