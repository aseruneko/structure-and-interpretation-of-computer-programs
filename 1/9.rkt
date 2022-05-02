#lang sicp

(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

; if a = 2, b = 2 then,
;
; (+ 2 2)
; (if (= 2 0) 2 (inc (+ (dec 2) 2)))
; (if $f 2 (inc (+ (dec 2) 2)))
; (inc (+ (dec 2) 2))
; (inc (+ 1 2))
; (inc (if (= 1 0) 2 (inc (+ (dec 1) 2))))
; (inc (if $f 2 (inc (+ (dec 1) 2))))
; (inc (inc (+ (dec 1) 2)))
; (inc (inc (+ 0 2)))
; (inc (inc (if (= 0 0) 2 (inc (+ (dec 0) 2)))))
; (inc (inc (if $t 2 (inc (+ (dec 0) 2)))))
; (inc (inc 2))
; (inc 3)
; 4
;
; -> iterative

(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))

; if a = 2, b = 2 then,
;
; (+ 2 2)
; (if (= 2 0) 2 (+ (dec 2) (inc 2)))
; (if $f 2 (+ (dec 2) (inc 2)))
; (+ (dec 2) (inc 2))
; (if (= (dec 2) 0) (inc 2) (+ (dec (dec 2)) (inc (inc 2))))
; (if (= 1 0) (inc 2) (+ (dec (dec 2)) (inc (inc 2))))
; (if $f (inc 2) (+ (dec (dec 2)) (inc (inc 2))))
; (+ (dec (dec 2)) (inc (inc 2)))
; (if (= (dec (dec 2)) 0) (inc (inc 2)) (+ (dec (dec (dec 2))) (inc (inc (inc 2))))
; (if (= (dec 1) 0) (inc (inc 2)) (+ (dec (dec (dec 2))) (inc (inc (inc 2))))
; (if (= 0 0) (inc (inc 2)) (+ (dec (dec (dec 2))) (inc (inc (inc 2))))
; (if $t (inc (inc 2)) (+ (dec (dec (dec 2))) (inc (inc (inc 2)))))
; (inc (inc 2))
; (inc 3)
; 4
;
; -> recursive