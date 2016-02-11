#lang racket
(require rackunit
         "trafficlight.rkt"
         2htdp/image)

;enumerate-test: (listof trafficlight) (listof trafficlight) -> null
; tests the an enumeration. Each item in the input list is tested against
; the corresponding output in the output list using check-equal
(define (enumerate-test inp-list outp-list)
  (cond [(empty? inp-list) void]
        [else (begin (check-equal? (next-color (car inp-list))
                                   (car outp-list))
                     (enumerate-test (cdr inp-list)
                                     (cdr outp-list)))]))

(enumerate-test (list "red" "yellow" "green") (list "green" "red" "yellow"))


(check-equal? (circle-on "green" "green") (circle LIGHT-RADIUS 'solid 'green))
(check-equal? (circle-on "red" "green") (circle LIGHT-RADIUS 'outline 'green))
(check-equal? (box-up (circle-on "green" "red")
                      (circle-on "green" "yellow")
                      (circle-on "green" "green"))
              (overlay/offset
               (circle-on "green" "red")
               (* 2 SPACING) 0
               (overlay/offset
                (circle-on "green" "yellow")
                0 0
                (overlay/offset
                 (circle-on "green" "green")
                 (* -2 SPACING) 0
                 FRAME))))
