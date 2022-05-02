#lang sicp

(define (A x y)
    (cond   ((= y 0) 0)
            ((= x 0) (* 2 y))
            ((= y 1) 2)
            (else (A    (- x 1)
                        (A x (- y 1))))))

(A 1 10)
(A 2 4)
(A 3 3)

(define (f n) (A 0 n)) ; 2のn倍
(define (g n) (A 1 n)) ; 2のn乗
(define (h n) (A 2 n)) ; 2 (の2乗)をn回
(define (k n) (* 5 n n))

(f 2)
(f 3)
(g 2)
(g 3)
(h 2)
(h 3)