#lang racket

(define (partition pred lst)
  (let split-list ((lst lst) (true-list '()) (false-list '()))
    (cond
      [(null? lst) (list true-list false-list)] ; Base case: reach the end of the input list
      [(pred (car lst)) ; Applies the predicate pred to the first element of lst. If predicate is true, add to true-list
       (split-list (cdr lst) (append true-list (list (car lst))) false-list)]
      [else ; Otherwise, add to false-list
       (split-list (cdr lst) true-list (append false-list (list (car lst))))])))
