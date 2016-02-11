#lang htdp/bsl
(require 2htdp/image)
(require 2htdp/universe)
(require 2htdp/batch-io)
(require rackunit)

; Exercise 36
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;a 3.2string is a string with length > 0, Interpretation: a string
;; a 1string is a string with length 1
;;string-first: extracts the first 1string from a 3.2string
;; 3.2string -> 1string
;; (define (string-first str)
;;   (substring str 0 1))
;; (check-equal? (string-first "hello") "h")
;; (check-equal? (string-first "blerp") "b")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 37
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; a 3.2string is a string with length > 0, Interpretation: a string
;; a 1string is a string with length 1
;; string-last: extracts the last 1string from a 3.2string
;; 3.2string -> 1string
;; (define (string-last str)
;;   (substring str (sub1 (string-length str))))
;; (check-equal? (string-last "hello") "o")
;; (check-equal? (string-last "blerp") "p")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 38
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; an Image is a drracket image
;; the Area of an Image is a Number, Interpretation: Number of Pixels
;; image-area: finds the area of the racket bounding box for an image
;; (define (image-area im)
;;   (* (image-width im)
;;      (image-height im)))
;; (check-equal? (image-area (rectangle 10 10 'solid 'blue)) 100)
;; (check-equal? (image-area (circle  10 'solid 'blue)) 400)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 39
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; a 3.2string is a string with length > 0, Interpretation: a string
;; a 1string is a string with length 1
;; string-rest: extracts everything except the first character from a 3.2string
;; 3.2string -> 3.2string
;; (define (string-rest str)
;;   (substring str 1))

;; (check-equal? (string-rest "hello_world") "ello_world")
;; (check-equal? (string-rest "nope") "ope")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 40
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; a 3.2string is a string with length > 0, Interpretation: a string
;; a 1string is a string with length 1
;; string-remove-last: returns string without last character
;; 3.2string -> 3.2string
;; (define (string-remove-last str)
;;   (substring str 0 (sub1 (string-length str))))

;; (check-equal? (string-remove-last "hello-world") "hello-worl")
;; (check-equal? (string-remove-last "nope") "nop")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 50
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Note: to run this exercise, you will need to switch the header to the one
;; included here.

;; #lang racket
;; (require 2htdp/image)
;; (require 2htdp/universe)
;; (require rackunit)

;; ;; a trafficlight shows one of these colors:
;; ;; - "red"
;; ;; - "green"
;; ;; - "yellow"
;; ;; Each string is a color that a trafficlight can show

;; ; A MouseEvt is one of these strings:
;; ; – "button-down"
;; ; – "button-up"
;; ; – "drag"
;; ; – "move"
;; ; – "enter"
;; ; – "leave"

;; ;; next-color: trafficlight -> trafficlight
;; ;; given a trafficlight, returns the next color
;; (define (next-color tl)
;;   (cond [(string=? tl "red") "green"]
;;         [(string=? tl "green") "yellow"]
;;         [(string=? tl "yellow") "red"]))

;; ;; mouse-wrapper: uses next-color as big-bang-mouse-handler
;; ;; trafficlight Int Int MouseEvent -> trafficlight
;; (define (mouse-wrapper tl x y event)
;;   (if (string=? event "button-down")
;;       (next-color tl)
;;       tl))

;; ;enumerate-test: (listof trafficlight) (listof trafficlight) -> null
;; ; tests a function that operates on
;; ; an enumeration. Each item in the input list is tested against
;; ; the corresponding output in the output list using check-equal
;; (define (enumerate-test inp-list outp-list)
;;   (cond [(empty? inp-list) void]
;;         [else (begin (check-equal? (next-color (car inp-list))
;;                                    (car outp-list))
;;                      (enumerate-test (cdr inp-list)
;;                            (cdr outp-list)))]))

;; (enumerate-test (list "red" "yellow" "green") (list "green" "red" "yellow"))

;; ;; rendr: draws the trafficlight
;; ;; trafficlight -> image
;; (define (rendr tl)
;;   (place-image (cond [(string=? tl "red") RED]
;;                      [(string=? tl "green") GREEN]
;;                      [(string=? tl "yellow") YELLOW]) MIDDLE MIDDLE CANVAS))

;; ;;; Graphical constants
;; (define LIGHT-RADIUS 50)
;; (define RED (circle LIGHT-RADIUS  'solid 'red))
;; (define GREEN (circle LIGHT-RADIUS 'solid 'green))
;; (define YELLOW (circle LIGHT-RADIUS 'solid 'yellow))
;; (define CANVAS-DIM (* 2  LIGHT-RADIUS))
;; (define CANVAS (empty-scene CANVAS-DIM CANVAS-DIM))
;; (define MIDDLE (/ CANVAS-DIM 2))
;; ;; main: runs a trafficlight simulator
;; ;; trafficlight -> trafficlight


;; (define (main tr)
;;   (big-bang tr
;;             [on-mouse mouse-wrapper]
;;             [to-draw rendr]))

;; (main "red")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
