#lang racket
(require 2htdp/image)
(require 2htdp/universe)
;; Author: Manny Schneck

; Exercise 1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define x 3)
;; (define y 4)

;; (sqrt (+ (* x x)
;;          (* y y)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define prefix "hello")
;; (define suffix "world")
;(string-append prefix "_" suffix)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define str "helloworld")
;; (define i 5)

;; (string-append
;;  (substring str 0 i)           ; takes substring from beginning to "o"
;;  "_"                           ; the "_" to be inserted
;;  (substring str i))            ; the rest of the string, from "o" to the end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; By starting the second substring at i + 1, the character at
;; position i is left out.
;; (define str "helloworld")
;; (define i 5)
;; (string-append
;;  (substring str 0 i)
;;  (substring str (add1 i)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define cat (circle 10 'solid 'black))
;; (* (image-height cat)
;;    (image-width cat))n
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 6
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define left-wheel (circle 10 'solid 'black))
;; (define right-wheel (circle 10 'solid 'black))
;; (define body (beside/align 'bottom
;;                            (rectangle 20 15 'solid 'red)
;;                            (rectangle 60 30 'solid 'red)
;;                            (rectangle 20 15 'solid 'red)))
;; (overlay/align 'left 'bottom
;;                left-wheel
;;                (overlay/align/offset 'right 'bottom
;;                                      right-wheel 0 -10
;;                                      body))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Exercise 7
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (define hull (beside (triangle/sas 50 90 20 'solid 'green)
;;                      (rectangle 100 50 'solid 'green)
;;                      (triangle/ass 90 50 70 'solid 'green)))
;; (define mast (rectangle 5 220 'solid 'black))
;; (define sail (flip-horizontal (right-triangle 60 200 'solid 'white)))
;; (define rigging (beside/align 'top sail mast))

;; (overlay/align/offset 'middle 'bottom
;;                       rigging
;;                       20 50
;;                       hull)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
