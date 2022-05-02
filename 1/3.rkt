#lang sicp

(define (func1 a b c) (
    cond    ((and (> b a) (> c a)) (+ (* b b) (* c c)))
            ((and (> c b) (> a b)) (+ (* c c) (* a a)))
            ((and (> b c) (> a c)) (+ (* b b) (* a a)))
))
(func1 2 3 4)