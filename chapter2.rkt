;; Author: Manny Schneck
#lang htdp/bsl
(require 2htdp/image)
(require 2htdp/universe)
(require rackunit)

; Exercise 13
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;distance: determines the distance from point (x,y) to the origin
;;Number Number -> Number
;; (define (distance x y)
;;   (sqrt (+ (sqr x)
;;            (sqr y))))
;; (check-equal? (distance 3 4) 5)
;; (check-equal? (distance 5 12) 13)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 14
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;cube-volume: finds the volume for a cube of given side length
;;Number -> Number
;; (define (cube-volume l)
;;   (expt l 3))
;; (check-equal? (cube-volume 3) 27)
;; (check-equal? (cube-volume 2) 8)
;; (check-equal? (cube-volume 1) 1)

;;cube-surface: finds the surface-area for a cube of given side length
;;Number -> Number
;; (define (cube-surface l)
;;   (* (sqr l) 6))
;; (check-equal? (cube-surface 1) 6)
;; (check-equal? (cube-surface 2) 24)
;; (check-equal? (cube-surface 6) (cube-volume 6))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 15
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;string-first: extracts the first 1String from a non-empty string
;;String -> 1String
;; (define (string-first s)
;;   (substring s 0 1))
;; (check-equal? (string-first "hi") "h")
;; (check-equal? (string-first "nope") "n")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
