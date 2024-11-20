#lang racket
(let ((x 1))
   (let ((x(+ x 1)))
     (+ x x)))

(let ((x 1) (y 10))
  (let ((x (+ y (* x 1))))
    (+ x (- (let ((x (+ x y)) (y (* y y)))
              (- y x)) y))))
