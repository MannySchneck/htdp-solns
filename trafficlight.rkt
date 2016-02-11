#lang racket
(require 2htdp/image)
(require 2htdp/universe)
(provide (all-defined-out))


;;; Graphical constants
(define LIGHT-RADIUS 20)
(define SPACING (* 1.2 LIGHT-RADIUS))
(define FRAME (rectangle (* 6.5 SPACING) (* 2.5 SPACING) 'outline 'black))
(define CANVAS-DIM (* 8  SPACING))
(define CANVAS-HEIGHT (/ CANVAS-DIM 2.5))
(define CANVAS (empty-scene CANVAS-DIM  CANVAS-HEIGHT))
(define MID-HEIGHT (/ CANVAS-HEIGHT 2))
(define MIDDLE (/ CANVAS-DIM 2))

;; a trafficlight shows one of these colors:
;; - "red"
;; - "green"
;; - "yellow"
;; Each string is a color that a trafficlight can show

;; A MouseEvt is one of these strings:
;; – "button-down"
;; – "button-up"
;; – "drag"
;; – "move"
;; – "enter"
;; – "leave"

;; next-color: trafficlight -> trafficlight
;; given a trafficlight, returns the next color
(define (next-color tl)
  (cond [(string=? tl "red") "green"]
        [(string=? tl "green") "yellow"]
        [(string=? tl "yellow") "red"]))

;; mouse-wrapper: uses next-color as big-bang-mouse-handler
;; trafficlight Int Int MouseEvent -> trafficlight
(define (mouse-wrapper tl x y event)
  (if (string=? event "button-down")
      (next-color tl)
      tl))

;; rendr: draws the trafficlight
;; trafficlight -> image
(define (rendr tl)
  (place-image (box-up (circle-on tl "red")
                       (circle-on tl "yellow")
                       (circle-on tl "green")) MIDDLE MID-HEIGHT CANVAS)) ;

;;; rendr utilities
;; box-up: puts traficlights in frame
;; image image image -> image
(define (box-up red yellow green)
  (overlay/offset
   red
   (* 2 SPACING) 0
   (overlay/offset
    yellow
    0 0
    (overlay/offset
     green
     (* -2 SPACING) 0
     FRAME))))


;; circle-on: given a color string and a state string, determines whether that
;; light is on or off and returns the appropriate image
;; trafficlight trafficlight -> image
(define (circle-on tr color)
  (if (string=? tr color)
      (circle LIGHT-RADIUS 'solid color)
      (circle LIGHT-RADIUS 'outline color)))

;; main: runs a trafficlight simulator
;; trafficlight -> trafficlight

(define (main tr)
  (big-bang tr
            [on-mouse mouse-wrapper]
            [to-draw rendr]))
